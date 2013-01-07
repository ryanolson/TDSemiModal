//
//  ROPickerController.m
//  Osila
//
//  Created by Ryan Olson on 1/7/13.
//  Copyright (c) 2013 Ryan Olson. All rights reserved.
//

#import "ROPickerController.h"

@interface ROPickerController ()

@end

@implementation ROPickerController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onCancel:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(pickerDidCancel:)]) {
        [self.delegate pickerDidCancel:self];
    }
}

-(void)onSave:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(picker:didSelectComponents:)]) {
        [self.delegate picker:self didSelectComponents:nil];
    }
}



@end
