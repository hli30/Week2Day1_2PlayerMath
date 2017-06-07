//
//  Player.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)initWithName: (NSString *)name{
    self = [super init];
    if (self) {
        _playerName = name;
        _lives = 3;
        _score = 0;
    }
    return self;
}

-(void)loseLife:(BOOL)isAnswerWrong{
    if (isAnswerWrong) {
        self.lives--;
    }
}




@end
