//
//  AppDelegate.m
//  TrelloApp
//
//  Created by Ryan Lee on 9/25/14.
//  Copyright (c) 2014 Ryan Lee. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    //set content to webview
    [self.window setContentView:self.webView];
    [self.window setTitle:@"TrelloApp"];
    
    //go to trello.com
    NSURL *url = [NSURL URLWithString:@"https://trello.com"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [[[self webView] mainFrame] loadRequest:urlRequest];
    
    //fullscreen mode support
    [self.window setCollectionBehavior:
     NSWindowCollectionBehaviorFullScreenPrimary];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
