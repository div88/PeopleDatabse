//
//  Person.m
//  PeopleDatabase
//
//  Created by Divya Iyengar on 12/18/16.
//  Copyright © 2016 Divya Iyengar. All rights reserved.
//

#import "Person.h"

@implementation Person

    - (void)enterInfo {
        NSLog(@"What is the first name?");
        char cstring[40];
        scanf("%s", cstring);
        
        firstName = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"What is the last name?");
        scanf("%s", cstring);
        lastName = [NSString stringWithCString:cstring encoding:1];
        
        NSLog(@"How old is %@ %@", firstName, lastName);
        scanf("%i", &age);
    }

    -(void)printInfo {
        NSLog(@"%@ %@ is %i years old", firstName, lastName, age);
    }



@end
