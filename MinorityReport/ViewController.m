//
//  ViewController.m
//  MinorityReport
//
//  Created by Jaime Hernandez on 3/13/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UILabel *theFuture;
    IBOutlet UILabel *thePrecogs;

}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)onDrag:(UIPanGestureRecognizer *)panGestureRecognizer
{
    CGPoint point = [panGestureRecognizer translationInView:self.view];
    theFuture.transform = CGAffineTransformMakeTranslation(point.x, point.y);
    
    point.x += theFuture.center.x;
    point.y += theFuture.center.y;
    
    if (CGRectContainsPoint(thePrecogs.frame, point)) {
        theFuture.text = @"A Fictitious and Incriminating Future";
        theFuture.backgroundColor = [UIColor orangeColor];
        [theFuture sizeToFit];
    }
    
    
//    NSLog(@"%f, %f", point.x, point.y);
}


@end
