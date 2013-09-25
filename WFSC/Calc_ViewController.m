//
//  Calc_ViewController.m
//  WFSC
//
//  Created by Kurt Lane on 23/08/13.
//  Copyright (c) 2013 kurtlane.com.au. All rights reserved.
//

#import "Calc_ViewController.h"

@interface Calc_ViewController ()

@end

@implementation Calc_ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidAppear:(BOOL)animated
{
    CGRect doorTopFrame = self.doorTop.frame;
    doorTopFrame.origin.y = 0;

    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            self.logo.frame = CGRectMake(0.0, 117.0, 320.0, 276.0);
            self.doorTop.frame = CGRectMake(0.0, -395.0, 320.0, 400.0);
            self.doorBottom.frame = CGRectMake(0.0, 516.0, 320.0, 400.0);
            self.arrow.center = CGPointMake(160.0, 460.0);
        } else {
            self.logo.frame = CGRectMake(0.0, 73.0, 320.0, 276.0);
            self.doorTop.frame = CGRectMake(0.0, -385.0, 320.0, 400.0);
            self.doorBottom.frame = CGRectMake(0.0, 428.0, 320.0, 400.0);
            self.arrow.frame = CGRectMake(50.0, 382.0, 222.0, 58.0);
            self.Danger.frame = CGRectMake(20.0, 270.0, 280.0, 143.0);

        }
        
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Reset setHidden:YES];
        [_arrow setHidden:YES];
        [_Danger setHidden:YES];
        [Score setHidden:YES];
        [Action setHidden:YES];

        CGRect doorBottomFrame = self.doorBottom.frame;
        doorBottomFrame.origin.y = 250;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:1.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(doorclsedidstop)];
        
        self.doorTop.frame = doorTopFrame;
        self.doorBottom.frame = doorBottomFrame;
        
        [UIView commitAnimations];

        
    } else {
        self.logo.frame = CGRectMake(0.0, 201.0, 768.0, 500.0);
        self.doorTop.frame = CGRectMake(0.0, -650.0, 768.0, 700.0);
        self.doorBottom.frame = CGRectMake(0.0, 936.0, 768.0, 700.0);
        
        
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Reset setHidden:YES];
        [Tip setHidden:YES];
        [arrow setHidden:YES];
        [Danger setHidden:YES];
        [_arrow setHidden:YES];
        [Score setHidden:YES];
        [Action setHidden:YES];
        [_Danger setHidden:YES];

        CGRect doorBottomFrame = self.doorBottom.frame;
        doorBottomFrame.origin.y = 450;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:1.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(doorclsedidstop)];
        
        self.doorTop.frame = doorTopFrame;
        self.doorBottom.frame = doorBottomFrame;
        
        [UIView commitAnimations];

    }
    
      
}

- (IBAction) reset
{
    CGRect doorTopFrame = self.doorTop.frame;
    doorTopFrame.origin.y = 0;
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            self.logo.frame = CGRectMake(0.0, 145.0, 320.0, 225.0);
        } else {
            self.logo.frame = CGRectMake(0.0, 106.0, 320.0, 217.0);
            self.doorBottom.frame = CGRectMake(0.0, 428.0, 320.0, 400.0);
        }
        
        CGRect doorBottomFrame = self.doorBottom.frame;
        doorBottomFrame.origin.y = 250;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:0.5];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(doorclsedidstop)];
        
        self.doorTop.frame = doorTopFrame;
        self.doorBottom.frame = doorBottomFrame;
        
        [Reset setHidden:YES];
        [textField1 resignFirstResponder];
        [textField2 resignFirstResponder];
        [textField3 resignFirstResponder];
        [textField4 resignFirstResponder];
        
        [UIView commitAnimations];
    } else {
        /*Do iPad stuff here.*/
        
        self.logo.frame = CGRectMake(0.0, 73.0, 320.0, 276.0);
        self.doorTop.frame = CGRectMake(0.0, -650.0, 768.0, 700.0);
        self.doorBottom.frame = CGRectMake(0.0, 926.0, 768.0, 700.0);
        
        CGRect doorBottomFrame = self.doorBottom.frame;
        doorBottomFrame.origin.y = 450;
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:0.2];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDidStopSelector:@selector(doorclsedidstop)];
        
        self.doorTop.frame = doorTopFrame;
        self.doorBottom.frame = doorBottomFrame;
        
        [UIView commitAnimations];
        
         [textField1 resignFirstResponder];
         [textField2 resignFirstResponder];
         [textField3 resignFirstResponder];
         [textField4 resignFirstResponder];
        
    }
    //doorTopFrame.origin.x = 0;


    
}


-(void) doorclsedidstop {
    // Second Animation
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    CGRect doorTopFrameOpen = self.doorTop.frame;
    CGRect doorBottomFrameOpen = self.doorBottom.frame;
    _arrow.transform = CGAffineTransformMakeRotation(M_PI/0.5);

    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            doorBottomFrameOpen.origin.y = 515;
        } else {
            doorBottomFrameOpen.origin.y = 428;
        }
        self.logo.alpha = 0.0;
        
        doorTopFrameOpen.origin.y = -250;
        //doorTopFrame.origin.x = 0;
                
        [textField1 resignFirstResponder];
        textField1.text = @"";
        [textField2 resignFirstResponder];
        textField2.text = @"";
        [textField3 resignFirstResponder];
        textField3.text = @"";
        [textField4 resignFirstResponder];
        textField4.text = @"";

        [Txt1 setHidden:NO];
        [Txt2 setHidden:NO];
        [textField1 setHidden:NO];
        [Step1Done setHidden:NO];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Reset setHidden:YES];
        [Score setHidden:YES];
        [Action setHidden:YES];
        [_arrow setHidden:NO];
        [_Danger setHidden:NO];
        
        
    } else {
        self.logo.alpha = 0.0;
        doorTopFrameOpen.origin.y = -650;
        doorBottomFrameOpen.origin.y = 928;

        //doorTopFrame.origin.x = 0;
        [textField1 resignFirstResponder];
        textField1.text = @"";
        [textField2 resignFirstResponder];
        textField2.text = @"";
        [textField3 resignFirstResponder];
        textField3.text = @"";
        [textField4 resignFirstResponder];
        textField4.text = @"";

        [Txt1 setHidden:NO];
        [Txt2 setHidden:NO];
        [textField1 setHidden:NO];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:NO];
        [Txt4 setHidden:NO];
        [textField2 setHidden:NO];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:NO];
        [Txt6 setHidden:NO];
        [textField3 setHidden:NO];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:NO];
        [Txt8 setHidden:NO];
        [textField4 setHidden:NO];
        [Calculate setHidden:NO];
        [Reset setHidden:NO];
        [Score setHidden:YES];
        [Action setHidden:YES];
        [Tip setHidden:YES];
        [textField1 becomeFirstResponder];
        [arrow setHidden:NO];
        [Danger setHidden:NO];
        [_arrow setHidden:NO];
        [_Danger setHidden:NO];
    }
    
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    [UIView setAnimationDelay:0.0];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(doorclsedidopen)];

    self.doorTop.frame = doorTopFrameOpen;
    self.doorBottom.frame = doorBottomFrameOpen;
    
    
    [UIView commitAnimations];
}

-(void) doordidopenonresults {
    // Second Animation
    self.logo.alpha = 0.0;
    CGRect doorTopFrameOpen = self.doorTop.frame;
    
    //doorTopFrame.origin.x = 0;
    CGRect doorBottomFrameOpen = self.doorBottom.frame;
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        if (screenSize.height > 480.0f) {
            doorTopFrameOpen.origin.y = -250;
            doorBottomFrameOpen.origin.y = 515;
        } else {
            doorTopFrameOpen.origin.y = -250;
            doorBottomFrameOpen.origin.y = 428;
        }
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        self.doorTop.frame = doorTopFrameOpen;
        self.doorBottom.frame = doorBottomFrameOpen;
        
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Score setHidden:NO];
        [Action setHidden:NO];
        [UIView commitAnimations];

    } else {
        /*Do iPad stuff here.*/
        doorTopFrameOpen.origin.y = -650;
        doorBottomFrameOpen.origin.y = 928;
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:1.0];
        [UIView setAnimationDelay:0.0];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
        
        self.doorTop.frame = doorTopFrameOpen;
        self.doorBottom.frame = doorBottomFrameOpen;
        
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Score setHidden:NO];
        [Action setHidden:NO];
        [Tip setHidden:NO];
        [UIView commitAnimations];


        
    }
    
    
    
    }


-(void) doorclsedidopen {
    // After Second Animation
    [textField1 becomeFirstResponder];
    }

- (IBAction) Step1
{
    float number = ([textField1.text floatValue]);
    /* if (number >= 0 && number <= 24) {
     }
     if ([textField1.text length] <= 0) {UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you have had in the last 24 hours. The value should be between 0 and 24 hours." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
     [alert show];
     } */
    if ((number != 24 && number != 23 && number != 22 && number != 21 && number != 20 && number != 19 && number != 18 && number != 17 && number != 16 && number != 15 && number != 14 && number != 13 && number != 12 && number != 11 && number != 10 && number != 9 && number != 8 && number != 7 && number != 6 && number != 5 && number != 4 && number != 3 && number != 2 && number != 1) || [textField1.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you have had in the last 24 hours. The value should be between 0 and 24 hours in whole numbers." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        textField1.text = @"";
        [alert show];    }
    else {
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:NO];
        [Txt4 setHidden:NO];
        [textField2 setHidden:NO];
        [Step2Done setHidden:NO];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        //   [Danger setHidden:YES];
        [textField2 becomeFirstResponder];
        [Reset setHidden:NO];
        [Score setHidden:YES];
        [Action setHidden:YES];
    }
}

- (IBAction) Step2
{
    float number2 = ([textField2.text floatValue]);
    if ((number2 != 24 && number2 != 23 && number2 != 22 && number2 != 21 && number2 != 20 && number2 != 19 && number2 != 18 && number2 != 17 && number2 != 16 && number2 != 15 && number2 != 14 && number2 != 13 && number2 != 12 && number2 != 11 && number2 != 10 && number2 != 9 && number2 != 8 && number2 != 7 && number2 != 6 && number2 != 5 && number2 != 4 && number2 != 3 && number2 != 2 && number2 != 1) || [textField2.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you had in the preceeding 24 hours. The value should be between 0 and 24 hours in whole numbers." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        textField2.text = @"";
        [alert show];
    }
    else {
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:NO];
        [Txt6 setHidden:NO];
        [textField3 setHidden:NO];
        [Step3Done setHidden:NO];
        [Txt7 setHidden:YES];
        [Txt8 setHidden:YES];
        [textField4 setHidden:YES];
        [Calculate setHidden:YES];
        [Score setHidden:YES];
        [Action setHidden:YES];
        [textField3 becomeFirstResponder];
    }
}

- (IBAction) Step3
{
    if ([textField3.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the number of hours you have been awake since your last sleep." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else {
        [Txt1 setHidden:YES];
        [Txt2 setHidden:YES];
        [textField1 setHidden:YES];
        [Step1Done setHidden:YES];
        [Txt3 setHidden:YES];
        [Txt4 setHidden:YES];
        [textField2 setHidden:YES];
        [Step2Done setHidden:YES];
        [Txt5 setHidden:YES];
        [Txt6 setHidden:YES];
        [textField3 setHidden:YES];
        [Step3Done setHidden:YES];
        [Txt7 setHidden:NO];
        [Txt8 setHidden:NO];
        [textField4 setHidden:NO];
        [Calculate setHidden:NO];
        //   [Danger setHidden:YES];
        [Score setHidden:YES];
        [Action setHidden:YES];
        [textField4 becomeFirstResponder];
    }
}

- (IBAction) calculate
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        /*Do iPhone stuff here.*/
        if ([textField4.text length] <= 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the length of your next shift." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
            [alert show];
        }
        else {
            
            CGRect doorTopFrame = self.doorTop.frame;
            doorTopFrame.origin.y = 0;
            [Score setHidden:YES];
            [Action setHidden:YES];
            CGSize screenSize = [[UIScreen mainScreen] bounds].size;
            if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
                if (screenSize.height > 480.0f) {
                    self.logo.frame = CGRectMake(0.0, 145.0, 320.0, 225.0);
                } else {
                    self.logo.frame = CGRectMake(0.0, 106.0, 320.0, 217.0);
                    self.doorBottom.frame = CGRectMake(0.0, 428.0, 320.0, 400.0);
                }
            } else {
                /*Do nothing here. iPad stuff here.*/
            }
            //doorTopFrame.origin.x = 0;
            
            CGRect doorBottomFrame = self.doorBottom.frame;
            doorBottomFrame.origin.y = 250;
            
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:1.0];
            [UIView setAnimationDelay:0.0];
            [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
            [UIView setAnimationDelegate:self];
            [UIView setAnimationDidStopSelector:@selector(doordidopenonresults)];
            
            self.doorTop.frame = doorTopFrame;
            self.doorBottom.frame = doorBottomFrame;
            
            [UIView commitAnimations];
            
            [Score setHidden:YES];
            [Action setHidden:YES];
            
            /* CGRect doorTopFrameOpen = self.doorTop.frame;
             doorTopFrameOpen.origin.y = -270;
             //doorTopFrame.origin.x = 0;
             
             CGRect doorBottomFrameOpen = self.doorBottom.frame;
             doorBottomFrameOpen.origin.y = 448;
             
             [UIView beginAnimations:nil context:nil];
             [UIView setAnimationDuration:1.0];
             [UIView setAnimationDelay:1.0];
             [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
             
             self.doorTop.frame = doorTopFrameOpen;
             self.doorBottom.frame = doorBottomFrameOpen;
             
             [UIView commitAnimations]; */
            
            float number1 = ([textField1.text floatValue]);
            if (number1 <= 2 && number1 >= 0) {Score2.text = @"12";}
            if (number1 == 3) {Score2.text = @"8";}
            if (number1 == 4) {Score2.text = @"4";}
            if (number1 >= 5 && number1 <= 24) {Score2.text = @"0";}
            
            float step1 = ([Score2.text floatValue]);
            
            float number2 = ([textField2.text floatValue]);
            if (number2+number1 <= 8) {Score3.text = @"8";}
            if (number2+number1 == 9) {Score3.text = @"6";}
            if (number2+number1 == 10) {Score3.text = @"4";}
            if (number2+number1 >= 11) {Score3.text = @"2";}
            if (number2+number1 >= 12) {Score3.text = @"0";}
            
            float step2 = ([Score3.text floatValue]);
            
            float number3 = ([textField3.text floatValue]);
            float number4 = ([textField4.text floatValue]);
            if (number2+number1 >= number3+number4) {Score4.text = @"0";}
            if (number2+number1 < number3+number4) {
                float step3 = ((number3+number4)-(number2+number1));
                Score4.text = [[NSString alloc] initWithFormat:@"%.0f", step3];}
            
            float step4 = ([Score4.text floatValue]);
            
            float total = step4+step2+step1;
            Score.text = [[NSString alloc] initWithFormat:@"%.0f", total];
            
            if (total <= 0 && total < 1) {
                Action.text = @"Watch for indicators";
               // _arrow.center = CGPointMake(160.0, 460.0);
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:2];
                [UIView setAnimationDelay:1.5];
                _arrow.transform = CGAffineTransformMakeRotation(M_PI/8);
                [UIView commitAnimations];
                
                
            }
            if (total >= 1 && total <= 5) {
                Action.text = @"Self Monitoring, Strategic use of caffeine, rest";
                //_arrow.center = CGPointMake(160.0, 460.0);
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:3];
                [UIView setAnimationDelay:1.5];
                _arrow.transform = CGAffineTransformMakeRotation(M_PI/2.65);
                [UIView commitAnimations];

                
                
            }
            if (total >= 6 && total <= 12) {
                Action.text = @"Advise supervisor, no safety critical tasks,  mitigation strategies based on error proofing and looking out for each other";
                //_arrow.center = CGPointMake(160.0, 460.0);
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:4];
                [UIView setAnimationDelay:1.5];
                _arrow.transform = CGAffineTransformMakeRotation(M_PI/1.6);
                [UIView commitAnimations];
                
                
                
            }
            if (total > 12) {
                Action.text = @"Stop activity immediately & contact your supervisor";
               // _arrow.center = CGPointMake(160.0, 460.0);
                [UIView beginAnimations:nil context:NULL];
                [UIView setAnimationDuration:5];
                [UIView setAnimationDelay:1.5];
                _arrow.transform = CGAffineTransformMakeRotation(M_PI/1.135);
                [UIView commitAnimations];

                
            }
            
            [textField4 resignFirstResponder];

        }
        
    }
    else {
        /*Do iPad stuff here.*/
        
        float number = ([textField1.text floatValue]);
        float number2 = ([textField2.text floatValue]);
        float number4 = ([textField4.text floatValue]);
        if ((number != 24 && number != 23 && number != 22 && number != 21 && number != 20 && number != 19 && number != 18 && number != 17 && number != 16 && number != 15 && number != 14 && number != 13 && number != 12 && number != 11 && number != 10 && number != 9 && number != 8 && number != 7 && number != 6 && number != 5 && number != 4 && number != 3 && number != 2 && number != 1) || [textField1.text length] <= 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you have had in the last 24 hours. The value should be between 0 and 24 hours in whole numbers." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
            textField1.text = @"";
            [alert show];
            [textField1 becomeFirstResponder];
            
        }
        else {
            if ((number2 != 24 && number2 != 23 && number2 != 22 && number2 != 21 && number2 != 20 && number2 != 19 && number2 != 18 && number2 != 17 && number2 != 16 && number2 != 15 && number2 != 14 && number2 != 13 && number2 != 12 && number2 != 11 && number2 != 10 && number2 != 9 && number2 != 8 && number2 != 7 && number2 != 6 && number2 != 5 && number2 != 4 && number2 != 3 && number2 != 2 && number2 != 1) || [textField2.text length] <= 0) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you had in the preceeding 24 hours. The value should be between 0 and 24 hours in whole numbers." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                textField2.text = @"";
                [alert show];
                [textField2 becomeFirstResponder];
            }
            else {
                if ([textField3.text length] <= 0) {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the number of hours you have been awake since your last sleep." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                    textField3.text = @"";
                    [alert show];
                    [textField3 becomeFirstResponder];
                }
                else {
                    if ((number4 != 24 && number4 != 23 && number4 != 22 && number4 != 21 && number4 != 20 && number4 != 19 && number4 != 18 && number4 != 17 && number4 != 16 && number4 != 15 && number4 != 14 && number4 != 13 && number4 != 12 && number4 != 11 && number4 != 10 && number4 != 9 && number4 != 8 && number4 != 7 && number4 != 6 && number4 != 5 && number4 != 4 && number4 != 3 && number4 != 2 && number4 != 1) || [textField4.text length] <= 0) {
                        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the length of your next shift. The value should be between 0 and 24 hours in whole numbers." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
                        textField4.text = @"";
                        [alert show];
                        [textField4 becomeFirstResponder];
                    }
                    else {
                        
                        
                        CGRect doorTopFrame = self.doorTop.frame;
                        doorTopFrame.origin.y = 0;
                        
                        self.logo.frame = CGRectMake(0.0, 73.0, 320.0, 276.0);
                        self.doorTop.frame = CGRectMake(0.0, -650.0, 768.0, 700.0);
                        self.doorBottom.frame = CGRectMake(0.0, 926.0, 768.0, 700.0);
                        
                        [Score setHidden:YES];
                        [Action setHidden:YES];
                        [textField1 resignFirstResponder];
                        [textField2 resignFirstResponder];
                        [textField3 resignFirstResponder];
                        [textField4 resignFirstResponder];
                        
                        
                        
                        CGRect doorBottomFrame = self.doorBottom.frame;
                        doorBottomFrame.origin.y = 450;
                        
                        [UIView beginAnimations:nil context:nil];
                        [UIView setAnimationDuration:1.0];
                        [UIView setAnimationDelay:0.1];
                        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
                        [UIView setAnimationDelegate:self];
                        [UIView setAnimationDidStopSelector:@selector(doordidopenonresults)];
                        
                        self.doorTop.frame = doorTopFrame;
                        self.doorBottom.frame = doorBottomFrame;
                        
                        [UIView commitAnimations];
                        
                        float number1 = ([textField1.text floatValue]);
                        if (number1 <= 2 && number1 >= 0) {Score2.text = @"12";}
                        if (number1 == 3) {Score2.text = @"8";}
                        if (number1 == 4) {Score2.text = @"4";}
                        if (number1 >= 5 && number1 <= 24) {Score2.text = @"0";}
                        
                        float step1 = ([Score2.text floatValue]);
                        
                        float number2 = ([textField2.text floatValue]);
                        if (number2+number1 <= 8) {Score3.text = @"8";}
                        if (number2+number1 == 9) {Score3.text = @"6";}
                        if (number2+number1 == 10) {Score3.text = @"4";}
                        if (number2+number1 >= 11) {Score3.text = @"2";}
                        if (number2+number1 >= 12) {Score3.text = @"0";}
                        
                        float step2 = ([Score3.text floatValue]);
                        
                        float number3 = ([textField3.text floatValue]);
                        float number4 = ([textField4.text floatValue]);
                        if (number2+number1 >= number3+number4) {Score4.text = @"0";}
                        if (number2+number1 < number3+number4) {
                            float step3 = ((number3+number4)-(number2+number1));
                            Score4.text = [[NSString alloc] initWithFormat:@"%.0f", step3];}
                        
                        float step4 = ([Score4.text floatValue]);
                        
                        float total = step4+step2+step1;
                        Score.text = [[NSString alloc] initWithFormat:@"%.0f", total];

                        if (total <= 0 && total < 1) {
                            //ScoreBkgrnd.backgroundColor = [UIColor greenColor];
                            Action.text = @"Watch for indicators";
                            Tip.text = @"We become naturally drowsy between midnight and dawn and again between 2pm and 4pm in the afternoon.  The risk of an accident increases during these hours regardless of the amount of sleep you may already have had. Eat a combination of protein and carbohydrates for lunch, for example a tuna sandwich.  Carbohydrates provide glucose for energy.  A hectic lifestyle is exhausting. Try to carve out a few more hours in your week to simply relax and hang out. If you can’t find a few more hours, it may be time to rethink your priorities and commitments.  Physical activity has many good effects on the body and mind. A good bout of exercise also helps you sleep better at night.  Seek advice and encouragement regarding the small steps you can take toward a more active lifestyle and talk to your doctor if you haven’t exercised in a long time, are obese, aged over 40 years or have a chronic medical condition.";
                            [UIView beginAnimations:nil context:NULL];
                            [UIView setAnimationDuration:2];
                            [UIView setAnimationDelay:1.5];
                            _arrow.transform = CGAffineTransformMakeRotation(M_PI/8);
                            [UIView commitAnimations];
                            
                        }
                        if (total >= 1 && total <= 5) {
                            //ScoreBkgrnd.backgroundColor = [UIColor yellowColor];
                            Action.text = @"Self Monitoring, Strategic use of caffeine, rest";
                            Tip.text = @"Tips to fight fatigue include drinking lots of water, limiting caffeine, drinking a protein shake, improving your diet, low sugar low G.I. foods, don’t over eat and getting enough sleep. Activity and physical exercise help fight fatigue.  Don’t skip meals.  Going without food for too long allows blood sugar levels to dip. Eat iron rich foods such as lean red meat. Eat a combination of protein and carbohydrates for lunch, for example a tuna sandwich. Carbohydrates provide glucose for energy.  Get moving. A brisk walk or even 10 minutes of stretching at your desk improves blood flow and boosts energy.  Limit stress and experiment with different relaxation techniques until you find one or two that work for you for example, you could think of a restful scene, focus on your breathing, or silently repeat a mantra or phrase.  Cigarette smoke contains many harmful substances and there are many reasons why smokers typically have lower energy levels than non-smokers – for example, for the body to make energy it needs to combine glucose with oxygen, but the carbon monoxide in cigarette smoke reduces the amount of oxygen available in the blood.";
                            [UIView beginAnimations:nil context:NULL];
                            [UIView setAnimationDuration:3];
                            [UIView setAnimationDelay:1.5];
                            _arrow.transform = CGAffineTransformMakeRotation(M_PI/2.65);
                            [UIView commitAnimations];

                        }
                        if (total >= 6 && total <= 12) {
                            //ScoreBkgrnd.backgroundColor = [UIColor orangeColor];
                            Action.text = @"Advise supervisor, no safety critical tasks,  mitigation strategies based on error proofing and looking out for each other";
                            Tip.text = @"Signs of fatigue include slow reaction times, poor concentration, memory lapses, lack of awareness, mood changes, excessive blinking and tired eyes and a lack of good judgement.  Napping can be used as a temporary measure to manage your fatigue and to keep alert on the job. However, you should not use napping as a substitute for getting a good main sleep.  Taking a nap before beginning a long trip helps prevent fatigue developing during the trip.  A short ten minute nap can help reduce your fatigue and boost your work performance when you are feeling tired during the work day. In general, a nap should last about 45 minutes or less so the groggy after effects are not as strong when you wake.  You should not immediately start work after waking from a nap. This is because your reaction time and alertness are still slow as a result of the nap. You should allow about 15 minutes after waking up to recover alertness before starting work.";
                            [UIView beginAnimations:nil context:NULL];
                            [UIView setAnimationDuration:4];
                            [UIView setAnimationDelay:1.5];
                            _arrow.transform = CGAffineTransformMakeRotation(M_PI/1.6);
                            [UIView commitAnimations];
                        }
                        if (total > 12) {
                            //ScoreBkgrnd.backgroundColor = [UIColor redColor];
                            Action.text = @"Stop activity immediately & contact your supervisor";
                            Tip.text = @"You require between seven and eight hours continuous sleep every night and may need to supplement this rest with additional sleep throughout the 24-hour period.  When you are severely fatigued you may experience micro-sleeps.  You may remember waking up, but cannot remember falling asleep seconds earlier. Eventually, you will become so sleepy that no amount of motivation, training, experience, or professionalism will prevent you from falling asleep uncontrollably.";
                            [UIView beginAnimations:nil context:NULL];
                            [UIView setAnimationDuration:5];
                            [UIView setAnimationDelay:1.5];
                            _arrow.transform = CGAffineTransformMakeRotation(M_PI/1.135);
                            [UIView commitAnimations];

                            
                        }
                        

                    }
                    
                }
            }
        }
        
    }

}

@end
