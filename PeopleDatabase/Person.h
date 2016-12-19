//
//  Person.h
//  PeopleDatabase
//
//  Created by Divya Iyengar on 12/18/16.
//  Copyright © 2016 Divya Iyengar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    int age;
}

- (void)enterInfo;
- (void)printInfo;
@end
