//
//  ViewController.m
//  2PlayerMath
//
//  Created by Harry Li on 2017-06-05.
//  Copyright © 2017 Harry. All rights reserved.
//

#import "ViewController.h"
#import "InputHandler.h"
#import "OutputFormatter.h"
#import "QuestionController.h"
#import "Question.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionOutput;
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;

@property (nonatomic) InputHandler *input;
@property (nonatomic) OutputFormatter *outputFormatter;
@property (nonatomic) Player *player;
@property (nonatomic) QuestionController *questionController;
@property (nonatomic) GameModel *gameModel;
@property (nonatomic) Question *question;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.input = [InputHandler new];
    self.outputFormatter = [OutputFormatter new];
    self.questionController = [QuestionController new];
    self.gameModel = [GameModel new];
    
    self.question = [self.questionController generateRandomQuestion];

    NSString *output = [self.outputFormatter formattedQuestion:self.question.questionString forPlayer:[self.gameModel currentPlayer].playerName];
    self.questionOutput.text = output;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonOne:(UIButton *)sender {
    [self.input collectInput:1];
}
- (IBAction)buttonTwo:(UIButton *)sender {
    [self.input collectInput:2];

}
- (IBAction)buttonThree:(UIButton *)sender {
    [self.input collectInput:3];

}
- (IBAction)buttonFour:(UIButton *)sender {
    [self.input collectInput:4];

}
- (IBAction)buttonFive:(UIButton *)sender {
    [self.input collectInput:5];

}
- (IBAction)buttonSix:(UIButton *)sender {
    [self.input collectInput:6];

}
- (IBAction)buttonSeven:(UIButton *)sender {
    [self.input collectInput:7];

}
- (IBAction)buttonEight:(UIButton *)sender {
    [self.input collectInput:8];

}
- (IBAction)buttonNine:(UIButton *)sender {
    [self.input collectInput:9];

}
- (IBAction)buttonZero:(UIButton *)sender {
    [self.input collectInput:0];

}
- (IBAction)enterButton:(UIButton *)sender {
    [self.input collectInput:10];
    
    [self.gameModel compareAnswer:[self.input userAnswer] withAnswer:self.question.answer];
    
    self.playerOneScore.text = [self.outputFormatter formattedScore:[self.gameModel.players[0] score] forPlayer:[self.gameModel.players[0] playerName]];
    self.playerTwoScore.text = [self.outputFormatter formattedScore:[self.gameModel.players[1] score] forPlayer:[self.gameModel.players[1] playerName]];
    
    if ([self.gameModel isGameOver]) {
        self.questionOutput.text = [self.outputFormatter gameOverMsgForPlayer:[self.gameModel currentPlayer].playerName];
        [self.gameModel resetGame];
        
    }else{
        
        self.question = [self.questionController generateRandomQuestion];
        
        [self.gameModel changeCurrentPlayer];
        
        self.questionOutput.text = [self.outputFormatter formattedQuestion:self.question.questionString forPlayer:[self.gameModel currentPlayer].playerName];
    }
}



@end
