APLNavigationController
=========

Custom UINavigationController subclass which adds support for automatic show/hide of the navgationBar based on the apl_hidesNavigationBarWhenPushed-Property on UIViewController.

## Installation
Install via cocoapods by adding this to your Podfile:

	pod "APLNavigationController", "~> 0.0.1"

## Usage
Import header file:

	#import "APLNavigationController.h"
	
### NavigationController
To use the APLNavigationController create a new instance like you would do with the standard UINavigationController

	UINavigationController *navController = [[APLNavigationController alloc] initWithRootViewController:yourRootViewController];
	
### Automatic show/hide navigationBar
In your viewController implement:

	- (BOOL)apl_hidesNavigationBarWhenPushed
	
	return YES -> Hide navigationBar
	return NO  -> Show navigationBar (default)
