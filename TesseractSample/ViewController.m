//
//  ViewController.m
//  TesseractSample
//
//  Created by Loïs Di Qual on 08/10/12.
//  Copyright (c) 2012 Loïs Di Qual. All rights reserved.
//

#import "ViewController.h"
#import "Tesseract.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    Tesseract* tesseract = [[Tesseract alloc] initWithDataPath:@"tessdata" language:@"eng"];
    //[tesseract setVariableValue:@"0123456789" forKey:@"tessedit_char_whitelist"];
    [tesseract setImage:[UIImage imageNamed:@"IMG_0335.jpg"]];
    [tesseract recognize];
    
    NSLog(@"%@", [tesseract recognizedText]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
