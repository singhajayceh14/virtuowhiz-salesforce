trigger HelloWorldTrigger on Account (before insert) {
	System.debug('Trigger Before Insert');
}