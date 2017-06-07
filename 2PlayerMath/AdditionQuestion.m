//
//  AdditionQuestion.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion{
    
    super.questionString = [NSString stringWithFormat:@"%ld + %ld = ?", self.leftValue, self.rightValue];
    super.answer = self.leftValue + self.rightValue;
}

@end
