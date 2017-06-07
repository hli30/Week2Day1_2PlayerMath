//
//  Player.h
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic) NSString *playerName;
@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

-(instancetype)initWithName: (NSString *)name;
-(void)loseLife:(BOOL)wrongAnswer;


@end
