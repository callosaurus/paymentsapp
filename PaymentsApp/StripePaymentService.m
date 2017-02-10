//
//  StripePaymentService.m
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)userInt
{
    NSLog(@"Stripe processed $%li",(long)userInt);
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
    return @"Stripe";
}

@end
