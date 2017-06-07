//
//  Question.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
    }
    return self;
}

-(void)generateQuestion{};

@end
