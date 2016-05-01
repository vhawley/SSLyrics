//
//  ViewController.h
//  SSLyrics
//
//  Created by Victor Hawley on 5/1/16.
//  Copyright © 2016 Victor Hawley Jr. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "iTunes.h"

@interface ViewController : NSViewController

@property (retain) NSTimer *timer;
@property (unsafe_unretained) IBOutlet NSTextView *lyrics;
@property (weak) IBOutlet NSTextField *titleLabel;

-(void)updateTrackLyrics;

@end

