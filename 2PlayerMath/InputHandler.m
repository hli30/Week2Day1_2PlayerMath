//
//  InputHandler.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSString *inputString = [NSString string];
        self.inputString = inputString;
    }
    return self;
}

//Takes in all buttonNumbers pressed before enter and put into a string
//When enter is pressed, convert string into inputInteger and clean the string
-(void)collectInput:(NSInteger)buttonNumber{
        switch (buttonNumber) {
            case 1:
                self.inputString = [self.inputString stringByAppendingString:@"1"];
                break;
            case 2:
                self.inputString = [self.inputString stringByAppendingString:@"2"];
                break;
            case 3:
                self.inputString = [self.inputString stringByAppendingString:@"3"];
                break;
            case 4:
                self.inputString = [self.inputString stringByAppendingString:@"4"];
                break;
            case 5:
                self.inputString = [self.inputString stringByAppendingString:@"5"];
                break;
            case 6:
                self.inputString = [self.inputString stringByAppendingString:@"6"];
                break;
            case 7:
                self.inputString = [self.inputString stringByAppendingString:@"7"];
                break;
            case 8:
                self.inputString = [self.inputString stringByAppendingString:@"8"];
                break;
            case 9:
                self.inputString = [self.inputString stringByAppendingString:@"9"];
                break;
            case 0:
                self.inputString = [self.inputString stringByAppendingString:@"0"];
                break;
            default:
                self.inputInteger = [self.inputString integerValue];
                self.inputString = @"";
                break;
    }
}

-(NSInteger)userAnswer{
    return self.inputInteger;
}

@end
