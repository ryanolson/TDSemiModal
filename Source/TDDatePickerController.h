//
//  TDDatePickerController.h
//
//  Created by Nathan  Reed on 30/09/10.
//  Copyright 2010 Nathan Reed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import	"TDSemiModal.h"


@interface TDDatePickerController : TDSemiModalViewController {
	__weak id delegate;
}

@property (nonatomic, weak) IBOutlet id delegate;
@property (nonatomic, strong) IBOutlet UIDatePicker* datePicker;

-(IBAction)saveDateEdit:(id)sender;
-(IBAction)clearDateEdit:(id)sender;
-(IBAction)cancelDateEdit:(id)sender;
-(IBAction)datePickerValueChanged:(id)sender;

@end

@protocol TDDatePickerDelegate <NSObject>
@optional
-(void)datePicker:(TDDatePickerController*)viewController didSaveWithDate:(NSDate *)date;
-(void)datePickerDidCancel:(TDDatePickerController*)viewController;
-(void)datePicker:(TDDatePickerController*)viewController dateDidChange:(NSDate *)date;
@end

