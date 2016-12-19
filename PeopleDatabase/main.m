//
//  main.m
//  PeopleDatabase
//
//  Created by Divya Iyengar on 12/17/16.
//  Copyright © 2016 Divya Iyengar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do{
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [newPerson printInfo];
            
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        }while(response == 'y');
       
        NSLog(@"Number of people in the database: %li", [people count]);
        for(Person *onePerson in people) {
            [onePerson printInfo];
        }
        // insert code here...
//        int x = 10;
//        NSString *myString = [NSString stringWithFormat:@"The variable x stores the number %i", x];
//        NSLog(@"%@", myString);
//        
//        NSLog(@"Please enter a word.");
//        
//        //1: Declare a variable called cstring to hold 40 characters.
//        char csstring[40];
//        
//        //2: scanf to expect a list of characters by using the %s format specifier.
//        scanf("%s",csstring);
//        
//        //3: an NSString object from the list of characters that were read in
//        NSString *inputString = [NSString stringWithCString:csstring encoding:1];
//        
//        NSLog(@"You entered the word '%@' and it %li characters long", inputString, [inputString length]);
    }
    return 0;
}
