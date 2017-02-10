//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Callum Davies on 2017-02-10.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)userInt;

@end
