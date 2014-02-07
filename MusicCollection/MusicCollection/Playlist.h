//
//  Playlist.h
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

@interface Playlist : NSObject
@property (nonatomic, copy) NSString *playlistName;
@property (nonatomic, strong) NSMutableArray *playlistArray;

-(id) initWithName: (NSString *) name;
-(void) addSong: (Song *) theSong;
-(void) list;
-(void) sort;

@end
