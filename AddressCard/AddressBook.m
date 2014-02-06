//
//  AddressBook.m
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName, book;

-(id) initWithName:(NSString *)name
{
    self = [super init];
    
    if(self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

-(id) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard
{
    [book addObject: theCard];
}

-(NSUInteger) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ ========", bookName);
    for (AddressCard *theCard in book)
    {
        NSLog(@"%-20s    %-32s", [theCard.name UTF8String],
              [theCard.email UTF8String]);
        NSLog(@"%-20s    %-32s", [theCard.address UTF8String], [theCard.phoneNum UTF8String]);
    }
    NSLog(@"==================================================");
}

/*-(AddressCard *) lookup: (NSString *) theName
{
    NSUInteger result = [book indexOfObjectPassingTest:^(id obj, NSUInteger idx, BOOL *stop)
                         {
                             if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
                                 return YES;
                             }
                             else
                             {
                                 return NO;
                             }
                         }];
    if (result != NSNotFound)
        return book[result];
    else
        return nil;
}*/

-(AddressCard *) lookup:(NSString *)theName
{
    for (AddressCard *nextCard in book) {
        
        if ([nextCard.name rangeOfString:theName options:NSCaseInsensitiveSearch].location == NSNotFound && [nextCard.email rangeOfString:theName options:NSCaseInsensitiveSearch].location == NSNotFound)
            continue;
        else
            return nextCard;
        
        
    }
    return nil;
}

-(void) removeCard: (AddressCard *) theCard;
{
    [book removeObjectIdenticalTo:theCard];
}

-(void) sort
{
    [book sortUsingComparator: ^(id obj1, id obj2) {
        return [obj1 compareNames:obj2];
    }];
}


-(NSIndexSet *) lookupAll:(NSString *)theName
{
    
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
                          ^(id obj, NSUInteger idx, BOOL *stop)
                          {
                              //NSLog(@"%@", [obj name]);
                              if([[obj name] rangeOfString:theName options:NSCaseInsensitiveSearch].location == NSNotFound && [[obj email] rangeOfString:theName options:NSCaseInsensitiveSearch].location == NSNotFound )
                              {
                                  
                                  return NO;
                              }
                              else
                              {
                                  return YES;
                              }
                              
                          } ];
    
    
    return result;
    
    
    
}


@end
