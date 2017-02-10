//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)userInt
{
    NSLog(@"Processed $%li",(long)userInt);
}

@end
