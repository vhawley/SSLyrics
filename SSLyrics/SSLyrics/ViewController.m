//
//  ViewController.m
//  SSLyrics
//
//  Created by Victor Hawley on 5/1/16.
//  Copyright © 2016 Victor Hawley Jr. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(void)updateTrackLyrics {
    iTunesApplication *iTunes = [SBApplication applicationWithBundleIdentifier:@"com.apple.iTunes"];

    if ([iTunes isRunning]) {
        iTunesTrack *track = [iTunes currentTrack];
        NSString *title = [NSString stringWithFormat:@"%@ - %@", track.name, track.artist];
        [_lyrics setString:track.lyrics];
        [_titleLabel setStringValue:title];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_lyrics setAlignment:NSCenterTextAlignment];

    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTrackLyrics) userInfo:nil repeats:YES];
    [self.timer fire];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
