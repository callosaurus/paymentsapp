//
//  main.m
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaymentDelegate.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomDollarValue = arc4random_uniform(901)+100;
        
        NSLog(@"Thank you for shopping at Acme.com.\nYour total today is $%i.\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomDollarValue);
        
        //get user input
        InputHandler *userInput = [InputHandler new];
        int userInt = [userInput getUserInput];
        
        
        PaymentGateway *payGate = [[PaymentGateway alloc] init];
        
        switch (userInt) {
            case 1: {
                NSLog(@"You chose to pay with Paypal!");
                PaypalPaymentService *payWithPaypal = [PaypalPaymentService new];
                payGate.paymentDelegate = payWithPaypal;
                [payGate processPaymentAmount:randomDollarValue];
                break;
            }
            case 2: {
                NSLog(@"You chose to pay with Stripe!");
                StripePaymentService *payWithStripe = [StripePaymentService new];
                payGate.paymentDelegate = payWithStripe;
                [payGate processPaymentAmount:randomDollarValue];
                break;
            }
            case 3: {
                NSLog(@"You chose to pay with Amazon!");
                AmazonPaymentService *payWithAmazon = [AmazonPaymentService new];
                payGate.paymentDelegate = payWithAmazon;
                [payGate processPaymentAmount:randomDollarValue];
                break;
            }
            default: {
                NSLog(@"Please pick 1, 2, or 3");
                break;
            }
        }
        
        
        [payGate processPaymentAmount:randomDollarValue];
        
        
        
        
        
        
    }
    return 0;
}
