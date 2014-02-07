//
//  main.m
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Song.h"
#import "Playlist.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *aSongName = @"Don't Stop Believin'";
        NSString *aSongArtist = @"Journey";
        NSString *aSongAlbum = @"Escape";
        
        NSString *bSongName = @"Thriller";
        NSString *bSongArtist = @"Michael Jackson";
        NSString *bSongAlbum = @"Thriller";
        
        NSString *cSongName = @"Get Back";
        NSString *cSongArtist = @"The Beatles";
        NSString *cSongAlbum = @"Get Back";
        
        NSString *dSongName = @"Every Breath You Take";
        NSString *dSongArtist = @"The Police";
        NSString *dSongAlbum = @"Synchronicity";
        
        Playlist *library = [[Playlist alloc] initWithName:@"Library"];
        Playlist *playlist1 = [[Playlist alloc] initWithName:@"Playlist1"];
        Playlist *playlist2 = [[Playlist alloc] initWithName:@"Playlist2"];
        
        Song *song1 = [[Song alloc ] init];
        Song *song2 = [[Song alloc] init];
        Song *song3 = [[Song alloc] init];
        Song *song4 = [[Song alloc] init];
        
        [song1 setName:aSongName andArtist:aSongArtist andAlbum:aSongAlbum];
        [song2 setName:bSongName andArtist:bSongArtist andAlbum:bSongAlbum];
        [song3 setName:cSongName andArtist:cSongArtist andAlbum:cSongAlbum];
        [song4 setName:dSongName andArtist:dSongArtist andAlbum:dSongAlbum];
        
        [library addSong:song1];
        [library addSong:song2];
        [library addSong:song3];
        [library addSong:song4];
        
        [playlist1 addSong:song1];
        [playlist1 addSong:song2];
        
        [playlist2 addSong:song1];
        [playlist2 addSong:song2];
        
        [library list];
        [playlist1 list];
        
        
    }
    return 0;
}
