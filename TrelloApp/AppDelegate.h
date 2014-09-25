//
//  AppDelegate.h
//  TrelloApp
//
//  Created by Ryan Lee on 9/25/14.
//  Copyright (c) 2014 Ryan Lee. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (assign) IBOutlet WebView *webView;

@end
