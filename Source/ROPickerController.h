//
//  ROPickerController.h
//  Osila
//
//  Created by Ryan Olson on 1/7/13.
//  Copyright (c) 2013 Ryan Olson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TDSemiModal.h"

@interface ROPickerController : TDSemiModalViewController

@property (nonatomic, weak) id delegate;
@property (nonatomic, strong) IBOutlet UIPickerView * picker;

-(IBAction)onCancel:(id)sender;
-(IBAction)onSave:(id)sender;
@end

@protocol ROPickerDelegate <NSObject>
@optional
-(void)pickerDidCancel:(id)controller;
-(void)picker:(id)controller didSelectComponents:(NSArray *)components;
@end
