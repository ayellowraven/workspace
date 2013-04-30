
// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function(){
  log.history = log.history || [];   // store logs to an array for reference
  log.history.push(arguments);
  if(this.console) {
    arguments.callee = arguments.callee.caller;
    var newarr = [].slice.call(arguments);
    (typeof console.log === 'object' ? log.apply.call(console.log, console, newarr) : console.log.apply(console, newarr));
  }
};

// make it safe to use console.log always
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
{console.log();return window.console;}catch(err){return window.console={};}})());

// This requires jQuery to function properly
// Sets window properties as cookies for server-side optimizations

function getDevicePixelRatio() {
	if(window.devicePixelRatio === undefined) return 1; // No pixel ratio available. Assume 1:1.
	return window.devicePixelRatio;
}

function getWindowOrientation() {
	if(window.orientation === undefined) return 0;
	return window.orientation;
}

function getWindowProperties() {
	document.cookie = "window-width=" + $(window).width() + "; path=/";
	document.cookie = "window-height=" + $(window).height() + "; path=/";
	document.cookie = 'screen-orientation=' + getWindowOrientation() + '; path=/';
}

function getScreenProperties() {
	document.cookie = "screen-width=" + screen.width + "; path=/";
	document.cookie = "screen-height=" + screen.height + "; path=/";
	document.cookie = "pixel-density=" + getDevicePixelRatio() + "; path=/";

}

// Sets window properties as cookies for server-side optimizations
$(document).ready(function(){
	getWindowProperties();
	getScreenProperties();
});
$(window).resize(getWindowProperties);
$(screen).resize(getScreenProperties);
// place any jQuery/helper plugins in here, instead of separate, slower script files.

