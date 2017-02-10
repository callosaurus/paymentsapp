//
//  main.m
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomDollarValue = arc4random_uniform(901)+100;
        
        NSLog(@"Thank you for shopping at Acme.com.\nYour total today is $%i.\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomDollarValue);
        
        InputHandler *userInput = [[InputHandler alloc] init];
        int userInt = [userInput getUserInput];
        
        
        switch (userInt) {
            case 1:
                NSLog(@"You chose to pay with Paypal!");
                break;
            case 2:
                NSLog(@"You chose to pay with Stripe!");
                break;
            case 3:
                NSLog(@"You chose to pay with Amazon!");
                break;
            default:
                NSLog(@"Please pick 1, 2, or 3");
                break;
        }
        
        
        
    }
    return 0;
}
