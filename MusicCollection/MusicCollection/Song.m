//
//  Song.m
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import "Song.h"

@implementation Song
@synthesize name, artist, album;

-(void) setName:(NSString *)theName andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum
{
    self.name = theName;
    self.artist = theArtist;
    self.album = theAlbum;
}

-(void) print
{
    NSLog(@"|%-31s |", [name UTF8String]);
    NSLog(@"|%-31s |", [artist UTF8String]);
    NSLog(@"|%-31s |", [album UTF8String]);
}

-(NSComparisonResult) compareNames:(id)element
{
    return [name compare:[element name]];
}
@end
