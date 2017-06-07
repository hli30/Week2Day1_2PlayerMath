//
//  InputHandler.h
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (nonatomic) NSString *inputString;
@property (nonatomic) NSInteger inputInteger;

-(void)collectInput:(NSInteger)buttonNumber;
-(NSInteger)userAnswer;

@end
