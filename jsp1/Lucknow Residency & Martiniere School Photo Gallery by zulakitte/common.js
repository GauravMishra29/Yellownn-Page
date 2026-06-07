// EVENT OBJECT

function get_e(e) { return e ? e : window.event }
function get_target(e) { return e.target ? e.target : e.srcElement }
function prevent_default(e) {
    if (!e) return;
	if(e.preventDefault) e.preventDefault();
	else e.returnValue = false;
}
function get_key_pressed(e) {return e.keyCode;}
function prevent_bubble(e) {
	if(e.stopPropagation) e.stopPropagation();
	else e.cancelBubble = true;
}


function set_opacity(obj, value) {
	var obj = (get(obj)) ? get(obj) : obj;
	if(obj) {
		obj.style.filter = 'alpha(opacity=' + value * 100 + ')';
		obj.style.opacity = value;
        obj.style.MozOpacity = value; 
        obj.style.KhtmlOpacity = value; 
	}
}
function get_viewport() {
	var x,y;
	if (self.innerHeight) { // all except Explorer
		x = self.innerWidth;
		y = self.innerHeight;
	}
	else if (document.documentElement && document.documentElement.clientHeight) { // Explorer 6 Strict Mode
		x = document.documentElement.clientWidth;
		y = document.documentElement.clientHeight;
	}
	else if (document.body) { // other Explorers
		x = document.body.clientWidth;
		y = document.body.clientHeight;
	}
	return {
	    x: x,
	    y: y
	};
}

// NODE TOOLS
function get(id) { return document.getElementById(id); }
function get_abs_pos(obj) {
	var obj = (get(obj)) ? get(obj) : obj;
	var x = 0;
	var y = 0;
	while(obj){
		x += parseInt(obj.offsetLeft);
		y += parseInt(obj.offsetTop);
		obj = obj.offsetParent;
	}
	return {
	    x: x,
	    y: y
	};
}
function is_a_parent(child, potential_parent) {
	while(child.parentNode != document.body) {
		if(child.parentNode == potential_parent) return true;
		child = child.parentNode;
	}
	return false;
}
function get_node(xml, tag) { if(xml) return xml.getElementsByTagName(tag)[0] }
function get_node_value(xml, tag) {
    if (!xml) return;
    return (tag) ? get_node(xml, tag).firstChild.nodeValue : xml.firstChild.nodeValue;
}

function remove_children(obj) {
	var obj = (get(obj)) ? get(obj) : obj;
	if(obj) {
		for(i = obj.childNodes.length - 1; i >= 0; i--) {
			obj.removeChild(obj.childNodes[i]);
		}
	}
}
function remove_element(obj) {
	var obj = (get(obj)) ? get(obj) : obj;
	if(obj && obj.parentNode) obj.parentNode.removeChild(obj);
}
function nodes2array(nodes) {
	if(nodes) {
		var array = new Array();
		for(i = 0; i < nodes.length; i++) {
			array.push(get_node_value(nodes[i]));
		}
		return array;
	}
}

// FUNCTION SETTERS
function set_event(obj, event, func) {
	if(event == 'click') obj.onclick = func;
	else if(event == 'change') obj.onchange = func;
	else if(event == 'submit') obj.onsubmit = func;
	else if(event == 'keyup') obj.onkeyup = func;
	else if(event == 'mouseover') obj.onmouseover = func;
	else if(event == 'mouseout') obj.onmouseout = func;
	else if(event == 'focus') obj.onfocus = func;
	else if(event == 'blur') obj.onblur = func;
	else if(event == 'unload') obj.onunload = func;
	else if(event == 'resize') obj.onresize = func;
	else if(event == 'load') obj.onload = func;
	else if(event == 'keypress') obj.onkeypress = func;
}

function apply_function_to_children(obj, child_tag, func, event, child_class) {
    if (!obj) return;
	var obj = (get(obj)) ? get(obj) : obj;
	if(!event) event = 'click';
	var children = obj.getElementsByTagName(child_tag);
	for(i = 0; i < children.length; i++) {
		if(children[i].className == child_class || !child_class) {
			set_event(children[i], event, func);
		}
	}
}
function apply_function_to_parent(obj, func, event) {
	var obj = (get(obj)) ? get(obj) : obj;
	if(!event) event = 'click';
	if(obj && obj.parentNode) {
		set_event(obj.parentNode, event, func);
	}
}
function apply_function_to_name(name, func, event) {
	var elements = document.getElementsByName(name);
	if(!event) event = 'click';
	for(var i = 0; i < elements.length; i++) {
		set_event(elements[i], event, func);
	}
}
function apply_function(obj, func, event) {
	var obj = (get(obj)) ? get(obj) : obj;
	if(!event) event = 'click';
	if(obj) {
		set_event(obj, event, func);
	}
}

// MISC
String.prototype.trim = function() {
	return this.replace(/^\s*|\s*$/g,'');
}
function debug(value) {
	var div = document.createElement('div');
	div.appendChild(document.createTextNode(value));
	document.body.appendChild(div);
}
function round(value, decimals) {
	decimals = (decimals) ? decimals : 0;
	return (Math.round(value * Math.pow(10, decimals)) / Math.pow(10, decimals));
}

// SCRIPT LOADER (loads scripts after document is loaded, but before images load)
function ScriptLoader() {
	var functions = new Array();
	var timer;
	var loaded;
	
	this.add = function(func) {
		functions[functions.length] = func;
	}
	
	function load() {
		if(!loaded) {
			loaded = true;
			if(timer) clearInterval(timer);
			
			for(var i = 0; i < functions.length; i++) {
				functions[i]();
			}
		}
	}
	
	//Internet Explorer
	/*@cc_on @*/
	/*@if (@_win32)
		if(document.getElementById){
			document.write("<script id=\"ieScriptLoad\" defer src=\"//0\"><\/script>");
		    document.getElementById("ieScriptLoad").onreadystatechange = function() {
		        if (this.readyState == "complete") {
		            load();
		        }
		    };
		}
	/*@end @*/
	
	// Mozilla/Opera 9
	if (document.addEventListener) {
		document.addEventListener("DOMContentLoaded", load, false);
	}
	
	// Webkit
	if(navigator.userAgent.search(/WebKit/i) != -1){
	    timer = setInterval(function (){
			if(document.readyState.search(/loaded|complete/i) != -1) {
				load();
			}
		}, 10);
	}
	
	// others
	window.onload = load;
}

function init_search_events() {
	var search = get('search');
	if(search) {
		apply_function(search.getElementsByTagName('input')[0], clear_search, 'focus');
		apply_function(search.getElementsByTagName('input')[0], reset_search, 'blur');
		apply_function(search, validate_search, 'submit');
	}
}

// search
function clear_search() {
	if(this.value == this.getAttribute('alt')) {
		this.value = '';
	}
}
function reset_search() {
	if(this.value == '') {
		this.value = this.getAttribute('alt');;
	}
}
function validate_search(e) { // buggy in IE 5, 5.5
	var query = this.elements.namedItem('q');
	if(query.value == query.getAttribute('alt') || !query.value) {
		prevent_default(get_e(e));
		query.focus();
	}
}


var ScriptLoader;
var is_compatible = document.createElement && document.getElementsByTagName;
if(is_compatible) {
	ScriptLoader = new ScriptLoader();
	ScriptLoader.add(init_search_events);
}


// misc
function load_images(urls_to_load, callback, param, loaded_images) {
	if(urls_to_load.length) {
	    if(!param) var param = '';
		if(!loaded_images) var loaded_images = new Array();
		var image_url = urls_to_load.shift();
		var new_image = new Image();
		new_image.src = image_url;
		loaded_images.push(new_image);
		if(new_image.complete) {
			load_images(urls_to_load, callback, param, loaded_images);
		} else {
			new_image.onload = function(e) {
				load_images(urls_to_load, callback, param, loaded_images);
			};
			
			new_image.onerror = function(e) {
				debug('error. ' + image_url + ' did not load');
				load_images(urls_to_load, callback, param, loaded_images);
			};
			
			new_image.onabort = function(e) {
				debug('aborted. image did not load');
			};
			
			window.onerror = function(e) {
				debug('window error');
			};
			return;
		}
	} else {
	    if (!callback) return true;
		callback(loaded_images, param);
		return true
	}
}

function replace_node(obj, new_obj) {
  //if (!obj.node) return;
  var parent = obj.parentNode;
  parent.insertBefore(new_obj, obj);
  parent.removeChild(obj);
}

function insertAfter(newElement, targetElement) {
  var parentElement = targetElement.parentNode;
  if (parentElement.lastChild == targetElement) {
    parentElement.appendChild(newElement);
  } else {
    parentElement.insertBefore(newElement, targetElement.nextSibling);
  }
}

function create_node(obj) {
    if (!obj.node) return;
    if (obj.node == 'text') {
      var text_node = document.createTextNode(obj.text);
      if (obj.parent) {
        obj.parent.appendChild(text_node);
      }
      return text_node;
    }
    var node = (obj.node.tagName) ? obj.node : document.createElement(obj.node);
    var parent = (get(obj.parent)) ? get(obj.parent) : obj.parent;
    
    var skip_keys = {node: 1, parent: 1, children: 1, text: 1, style: 1};
    var event_keys = {click: 1, change: 1, submit: 1, keyup: 1, mouseover: 1,
                      mouseout: 1, focus: 1, blur: 1, unload: 1, resize: 1,
                      load: 1, keypress: 1};
    for (var key in obj) {
        if (skip_keys[key]) continue;
        if (event_keys[key]) {
          set_event(node, key, obj[key]);
          continue;
        }
        node[key] = obj[key];
    }

    if (obj.style) {
        for (var key in obj.style) {
            node.style[key] = obj.style[key];
        }
    }
    
    if (obj.text) node.appendChild(document.createTextNode(obj.text));
    if (parent) parent.appendChild(node);
    if (!obj.children) return node;
    
    for (var i = 0; i < obj.children.length; i++) {
        var child = obj.children[i];
        child.parent = node;
        create_node(child);
    }
    return node;
}

function toggle_node_vis(obj) {
    var obj = (get(obj)) ? get(obj) : obj;
    if (!obj) return;
    
    obj.style.display = (obj.style.display == '') ? 'none' : '';
    return 1;
}

function hide_node(obj) {
    var obj = (get(obj)) ? get(obj) : obj;
    if (!obj) return;
    
    obj.style.display = 'none';
    return 1;
}

function show_node(obj) {
    var obj = (get(obj)) ? get(obj) : obj;
    if (!obj) return;
    
    obj.style.display = '';
    return 1;
}


function evalWhen(expression, condition) {
  if (!eval(condition)) {
    setTimeout("evalWhen('" + expression + "','" + condition + "')", 500);
  } else {
    eval(expression);
  }
}
if (!Array.prototype.shift) {
  Array.prototype.shift = function() {
    firstElement = this[0];
    this.reverse();
    this.length = Math.max(this.length-1, 0);
    this.reverse();
    return firstElement;
  }
}
if (!Array.prototype.unshift) {
  Array.prototype.unshift = function() {
    this.reverse();
    for (var i=arguments.length-1; i>=0; i--) {
      this[this.length] = arguments[i];
    }
    this.reverse();
    return this.length;
  }
}
