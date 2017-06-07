//
//  QuestionController.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "QuestionController.h"
#import "Question.h"

@implementation QuestionController

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSArray *questionSubclassNames = @[@"AdditionQuestion", @"MultiplyQuestion"];
        _questionSubclassNames = questionSubclassNames;
    }
    return self;
}

-(Question *)generateRandomQuestion{
    
    int index = arc4random_uniform(2);
    Question *question = [[NSClassFromString(self.questionSubclassNames[index]) alloc] init];
    return question;
}

@end
