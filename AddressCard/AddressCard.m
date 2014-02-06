//
//  AddressCard.m
//  AddressCard
//
//  Created by vincentsfong on 2/3/14.
//  Copyright (c) 2014 Learning. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name, email, address, phoneNum;

-(void) setName:(NSString *)theName
{
    if(name != theName)
        name = [NSString stringWithString:theName];
}

-(void) setEmail:(NSString *)theEmail
{
    if(email != theEmail)
        email = [NSString stringWithString:theEmail];
}

/*-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
} */


-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail andAddress:(NSString *)theAddress andPhoneNum:(NSString *)thePhoneNum
{
    self.name = theName;
    self.email = theEmail;
    self.address = theAddress;
    self.phoneNum = thePhoneNum;
}

-(void) print
{
    NSLog(@"==================================");
    NSLog(@"|                                |");
    NSLog(@"|%-31s |", [name UTF8String]);
    NSLog(@"|%-31s |", [email UTF8String]);
    NSLog(@"|%-31s |", [address UTF8String]);
    NSLog(@"|%-31s |", [phoneNum UTF8String]);
    NSLog(@"|                                |");
    NSLog(@"|     O        O                 |");
    NSLog(@"==================================");
}
-(BOOL) isEqual:(AddressCard *) theCard
{
    if([name isEqualToString: theCard.name] == YES && [email isEqualToString:theCard.email] == YES)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
-(NSComparisonResult) compareNames:(id)element
{
    return [name compare: [element name]];
}


@end
