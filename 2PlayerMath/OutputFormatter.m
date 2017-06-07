//
//  OutputFormatter.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "OutputFormatter.h"


@implementation OutputFormatter

-(NSString *)formattedQuestion:(NSString *)question forPlayer:(NSString *)playerName{
  
    return [playerName stringByAppendingString:question];
}

-(NSString *)formattedScore:(NSInteger)score forPlayer:(NSString *)playerName{
    
    return [playerName stringByAppendingString:[NSString stringWithFormat:@"%ld", score]];
}

-(NSString *)gameOverMsgForPlayer:(NSString *)playerName{
    
    return [playerName stringByAppendingString:@" Lost! Game Over! Press Enter to Restart!"];
}


@end
