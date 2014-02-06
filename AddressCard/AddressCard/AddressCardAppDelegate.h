//
//  AddressCardAppDelegate.h
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AddressCardAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

@end
