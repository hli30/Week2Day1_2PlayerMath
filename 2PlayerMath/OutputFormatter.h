//
//  OutputFormatter.h
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OutputFormatter : NSObject

-(NSString *)formattedQuestion:(NSString *) question forPlayer:(NSString *) playerName;
-(NSString *)formattedScore:(NSInteger)score forPlayer:(NSString *)playerName;
-(NSString *)gameOverMsgForPlayer:(NSString *)playerName;



@end
