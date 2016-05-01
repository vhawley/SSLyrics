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
        if (track.databaseID != _songID) {
            _songID = track.databaseID;
            NSLog(@"%@ - %@", track.name, track.artist);
            dispatch_async(dispatch_get_main_queue(), ^{
                [_lyrics setString:track.lyrics];
                int test = _lyrics.alignment;
                NSLog(@"%d", test);
            });
        }
    }
    }

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _songID = -1;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTrackLyrics) userInfo:nil repeats:YES];
    [self.timer fire];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
