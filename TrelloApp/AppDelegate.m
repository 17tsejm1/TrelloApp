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
    NSRect frame=[NSScreen mainScreen].frame ;
    [self.window setFrame:frame display:YES animate:YES];
    NSURL *url = [NSURL URLWithString:@"https://trello.com"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [[[self webView] mainFrame] loadRequest:urlRequest];
    [self.window setCollectionBehavior:
     NSWindowCollectionBehaviorFullScreenPrimary];
    [self.window setContentView:self.webView];
    [self.window setTitle:@"TrelloApp"];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
