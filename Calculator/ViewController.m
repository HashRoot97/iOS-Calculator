//
//  ViewController.m
//  Calculator
//
//  Created by Admin on 02/08/2017.
//  Copyright © 2017 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize operand1, operand2, optr, calculate, answer;

- (void)viewDidLoad {
    [super viewDidLoad];
    [calculate addTarget:self action:@selector(btn_calculate:) forControlEvents: UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) btn_calculate : (id) sender{
    NSString *op_1 = operand1.text;
    NSString *op_2 = operand2.text;
    NSString *oper = optr.text;
    
    int op_int_1 = [op_1 intValue];
    int op_int_2 = [op_2 intValue];
    
    int ans = 0;
    
    if([oper isEqualToString: @"+"]){
        ans = op_int_1 + op_int_2;
    }
    
    else if([oper isEqualToString: @"-"]){
        ans = op_int_1 - op_int_2;
    }
    
    else if([oper isEqualToString: @"*"]){
        ans = op_int_1 * op_int_2;
    }
    else if([oper isEqualToString: @"/"]){
        ans = op_int_1 / op_int_2;
    }
    else{
        NSLog(@"Error. Wrong Operator");
    
    }
    NSString *final_ans = [NSString stringWithFormat:@"%d", ans];
    answer.text = final_ans;

}


@end
