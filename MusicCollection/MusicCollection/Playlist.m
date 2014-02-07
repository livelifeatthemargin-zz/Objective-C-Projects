//
//  Playlist.m
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import "Playlist.h"

@implementation Playlist
@synthesize playlistArray, playlistName;

-(id) initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        playlistName = [NSString stringWithString:name];
        playlistArray = [NSMutableArray array];
    }
    return self;
}

-(void) addSong:(Song *)theSong
{
    [playlistArray addObject:theSong];
}

-(void) list
{
    NSLog(@"======= Contents of: %@ =========", playlistName);
    for (Song *thesong in playlistArray)
    {
        NSLog(@"%-5s    %-20s", [thesong.name UTF8String], [thesong.artist UTF8String]);
        NSLog(@"Album: %s", [thesong.album UTF8String]);
    }
    
}

-(void) sort
{
    [playlistArray sortUsingComparator:^(id obj1, id obj2)
     {
         return [obj1 compareNames:obj2];
     }];
}
@end
