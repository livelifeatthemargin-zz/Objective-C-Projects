//
//  Song.h
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject
@property (copy, nonatomic) NSString *name, *artist, *album;
-(void) print;
-(void) setName:(NSString *) theName andArtist:(NSString *) theArtist andAlbum:(NSString *) theAlbum;
-(NSComparisonResult) compareNames: (id) element;


@end
