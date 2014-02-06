//
//  MusicCollectionAppDelegate.h
//  MusicCollection
//
//  Created by vincentsfong on 2/6/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MusicCollectionAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
