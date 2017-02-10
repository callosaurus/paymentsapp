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
    BOOL processAllowed = [self.paymentDelegate canProcessPayment];
    if (processAllowed == YES) {
        NSLog(@"Payment is allowed!");
        [self.paymentDelegate processPaymentAmount:userInt];
    } else {
        
        NSLog(@"Strange eldritch magicks interfered with %@'s ability to process the payment", [self.paymentDelegate name]);
    }
}

@end
