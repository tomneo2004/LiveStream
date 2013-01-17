//
//  ViewController.m
//  LiveStreamTest
//
//  Created by Nelson on 1/17/13.
//  Copyright (c) 2013 Nelson. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    MPMoviePlayerViewController *player = [[MPMoviePlayerViewController alloc] initWithContentURL:[NSURL URLWithString:@"http://54.248.230.82:1935/live/demo700k/playlist.m3u8"]];
    
    player.moviePlayer.movieSourceType = MPMovieSourceTypeStreaming;
    
    [self presentMoviePlayerViewControllerAnimated:player];
     
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(logm3u8) userInfo:nil repeats:YES];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)logm3u8
{
    NSError *error;
    NSString *str = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://54.248.230.82:1935/live/demo700k/playlist.m3u8"] encoding:NSUTF8StringEncoding error:&error];
    
    NSLog(@"error:%@", error);
    
    NSLog(@"m3u8:\n\n%@\n\n\n", str);
}

@end
