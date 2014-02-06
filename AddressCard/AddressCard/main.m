//
//  main.m
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *aAddress = @"123 Main Street";
        NSString *aPhoneNum = @"555-1234";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *bAddress = @"190 Ryland Street";
        NSString *bPhoneNum = @"123-4567";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *cAddress = @"1456 Ferguson Way";
        NSString *cPhoneNum = @"908-4325";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        NSString *dAddress = @"123 Times Square";
        NSString *dPhoneNum = @"456-2359";
        
        //Set up a new Address Book
        
        AddressBook *myBook = [[AddressBook alloc] initWithName:@"Linda's Address Book"];
        
        AddressCard *myCard;
        
        
        NSLog(@"Entries in address book after creation %li", [myBook entries]);
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        [card1 setName:aName andEmail:aEmail andAddress:aAddress andPhoneNum:aPhoneNum];
        [card2 setName:bName andEmail:bEmail andAddress:bAddress andPhoneNum:bPhoneNum];
        [card3 setName:cName andEmail:cEmail andAddress:cAddress andPhoneNum:cPhoneNum];
        [card4 setName:dName andEmail:dEmail andAddress:dAddress andPhoneNum:dPhoneNum];
        
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        
        NSLog(@"steve");
        myCard = [myBook lookup:@"steve"];
        if (myCard != nil) {
            [myCard print];
        }
        else
            NSLog(@"Not found!");
        
        //[myBook removeCard:myCard];
        
        [myBook list];
        //[myBook sort];
        //[myBook list];
        NSIndexSet *lookupVals = [[NSIndexSet alloc] init];
        lookupVals = [myBook lookupAll:@"julia"];
        NSLog(@"%@", lookupVals);
    }
    return 0;
}
