//
//  AppDelegate.m
//  Bob
//
//  Created by ripper on 2019/11/20.
//  Copyright © 2019 ripperhe. All rights reserved.
//

#import "AppDelegate.h"
#import "StatusItem.h"
#import "Shortcut.h"
#import "MMCrash.h"
#import "TranslateWindowController.h"
#import "TranslateViewController.h"
#import "Configuration.h"
#import "EZMainWindow.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    MMLogInfo(@"程序启动");
    [MMCrash registerHandler];
    [StatusItem.shared setup];
    [Shortcut setup];
    
    EZMainWindow *window = [EZMainWindow shared];
    [window center];
    [window makeKeyAndOrderFront:nil];
    
//    NSApplication.shared.applicationIconImage = NSImage(named: "macIcon3")
    
    NSApplication.sharedApplication.applicationIconImage = [NSImage imageNamed:@"white-black"];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    [StatusItem.shared remove];
}

@end