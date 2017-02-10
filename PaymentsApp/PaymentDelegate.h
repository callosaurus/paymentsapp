//
//  PaymentGatewayDelegate.h
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)userInt;
-(BOOL)canProcessPayment;
-(NSString *)name;

@end
