//
//  GameModel.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"


@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        Player *player1 = [[Player alloc]initWithName:@"Player1:"];
        [self.players addObject:player1];

        Player *player2 = [[Player alloc]initWithName:@"Player2:"];
        [self.players addObject:player2];

        _currentIndex = 0;
    }
    return self;
}

-(Player *)currentPlayer{
    return self.players[self.currentIndex];
}

-(void)changeCurrentPlayer{
    if (self.currentIndex == 0) {
        self.currentIndex = 1;
    }else{
        self.currentIndex = 0;
    }
}

-(void)compareAnswer:(NSInteger)userAnswer withAnswer:(NSInteger) answer{
    if (userAnswer != answer) {
        [[self currentPlayer] loseLife:YES];
    }else{
        [self currentPlayer].score++;
    }
}

-(BOOL)isGameOver{
    if([self currentPlayer].lives == 0){
        return YES;
    }else{
        return NO;
    }
}

-(void)resetGame{
    [self.players[0] setScore:0];
    [self.players[0] setLives:3];
    [self.players[1] setScore:0];
    [self.players[1] setLives:4];
    self.currentIndex = 1;
}

@end
