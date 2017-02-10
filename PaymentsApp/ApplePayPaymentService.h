//
//  ApplePayPaymentService.h
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentDelegate.h"

@interface ApplePayPaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger)userInt;

@end
