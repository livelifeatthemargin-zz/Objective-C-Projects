//
//  AddressBook.h
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(AddressCard *) lookup: (NSString *) theName;
-(void) list;
-(void) removeCard: (AddressCard *) theCard;
-(void) sort;
-(NSIndexSet *) lookupAll: (NSString *) theName;



@end
