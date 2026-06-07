function vote(account_name, vote_obj, timestamp, mode) {
	theMode = mode;
	myRequest = createRequestObject();
	if(mode == 1) {
		accountName = account_name;
		voteObj = vote_obj;
		var url = 'http://www.pbase.com/' + account_name + '/image/' + vote_obj + '&cmd=vote&t=' + timestamp + '&src=ajax';
	} else if(mode == 2) {
		accountName = account_name;
		voteObj = vote_obj;
		var url = 'http://www.pbase.com/' + account_name + '/' + vote_obj + '&cmd=vote&t=' + timestamp + '&src=ajax';
	}
	myRequest.open('get', url);
	myRequest.onreadystatechange = handleResponse;
	myRequest.send(null);
}
function handleResponse() {
	if(myRequest.readyState == 4) {
		myResponseText = myRequest.responseText;
		var voteContainer = document.getElementById('voteContainer');
		voteContainer.removeChild(voteContainer.firstChild);
		if(theMode == 1) {
			var subject = 'photo';
		} else if(theMode == 2) {
			var subject = 'gallery';
		}
		if(myResponseText == 0) {
			output = 'You have already voted for this ' + subject + '.';
		} else if(myResponseText == 1) {
			output = 'Thanks for voting!';
		} else if(myResponseText == 2) {
			output = 'Voting is not enabled for this ' + subject + '.';
		} else if(myResponseText == 3) {
			output = 'Invalid ' + subject + '_id';
		} else if(myResponseText == 4) {
			output = 'Please login first.';
		} else {
			output = 'Voting has expired, try again.';
		}
		outputObj = document.createTextNode(output);			
		if(myResponseText > 1) {
			newTimestamp = myResponseText;
			aElement = document.createElement('a');
			if(theMode == 1) {
				aElement.href = 'http://www.pbase.com/' + accountName + '/image/' + voteObj + '&cmd=vote&t=' + newTimestamp + '&src=ajax';
				aElement.onclick = function x() {vote(accountName, voteObj, newTimestamp, 1); return false;};
			} else if(theMode == 2) {
				aElement.href = 'http://www.pbase.com/' + accountName + '/' + voteObj + '&cmd=vote&t=' + newTimestamp + '&src=ajax';
				aElement.onclick = function x() {vote(accountName, voteObj, newTimestamp, 2); return false;};
			}
			
			aElement.appendChild(outputObj);
			voteContainer.appendChild(aElement);
		} else {
			voteContainer.appendChild(outputObj);
		}
	}
}