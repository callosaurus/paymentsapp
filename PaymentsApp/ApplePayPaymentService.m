//
//  ApplePayPaymentService.m
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ApplePayPaymentService.h"

@implementation ApplePayPaymentService

-(void)processPaymentAmount:(NSInteger)userInt
{
    NSLog(@"Apple Pay processed $%li",(long)userInt);
}

-(BOOL)canProcessPayment
{
    int n = arc4random_uniform(2);
    if (n == 0) {
        return NO;
    } else {
        return YES;
    }
}

-(NSString *)name
{
    return @"Apple Pay";
}

@end
