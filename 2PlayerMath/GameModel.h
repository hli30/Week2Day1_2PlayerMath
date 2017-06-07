//
//  GameModel.h
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Player;

@interface GameModel : NSObject

@property (nonatomic) NSMutableArray *players;
@property (nonatomic) NSInteger currentIndex;

-(Player *)currentPlayer;
-(void)changeCurrentPlayer;
-(void)compareAnswer:(NSInteger) userAnswer withAnswer:(NSInteger) answer;
-(BOOL)isGameOver;
-(void)resetGame;

@end
