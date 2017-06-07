//
//  QuestionController.h
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Question;

@interface QuestionController : NSObject

@property NSArray *questionSubclassNames;

-(Question *)generateRandomQuestion;

@end
