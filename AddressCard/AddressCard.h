//
//  AddressCard.h
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
//-(NSString *) name;
//-(NSString *) email;
@property (copy, nonatomic) NSString *name, *email, *address, *phoneNum;
-(void) print;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andPhoneNum: (NSString *) thePhoneNum;
-(BOOL) isEqual:(AddressCard *) theCard;
-(NSComparisonResult) compareNames: (id) element;


@end
