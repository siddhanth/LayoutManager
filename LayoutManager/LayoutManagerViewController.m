//
//  LayoutManagerViewController.m
//  LayoutManager
//
//  Created by facilogi on 13/05/14.
//  Copyright (c) 2014 tazi.hosni.omar. All rights reserved.
//

#import "LayoutManagerViewController.h"
#import "VLayoutView.h"
#import "HLayoutView.h"

@interface LayoutManagerViewController ()
@property (weak, nonatomic) IBOutlet VLayoutView *vLayoutView;
@property (weak, nonatomic) IBOutlet UIView *viewToHide;
@property (weak, nonatomic) IBOutlet HLayoutView *hLayoutView;

@property (weak, nonatomic) IBOutlet UIButton *buttonToHide;

@end

@implementation LayoutManagerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.vLayoutView.hAlignment = UIControlContentHorizontalAlignmentLeft; //horizontal Alignment
    self.vLayoutView.vAlignment = UIControlContentVerticalAlignmentTop; // vertical Alignment
    self.vLayoutView.spacing = 10; //spacing between subviews
    self.vLayoutView.removeOnHide = YES; // YES means remove blank spaces when a view is hidden
    
    self.hLayoutView.hAlignment = UIControlContentHorizontalAlignmentCenter;
    self.hLayoutView.vAlignment = UIControlContentVerticalAlignmentCenter;
    self.hLayoutView.spacing=10;
    self.hLayoutView.removeOnHide  = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnTouchUpInside:(UIButton*)sender
{
    if([sender.titleLabel.text isEqualToString:@"hide"]) {
        [sender setTitle:@"show" forState:UIControlStateNormal];
        self.viewToHide.hidden = YES;
        self.buttonToHide.hidden = YES;
    } else {
        [sender setTitle:@"hide" forState:UIControlStateNormal];
        self.viewToHide.hidden = NO;
        self.buttonToHide.hidden=NO;
    }
}

@end
