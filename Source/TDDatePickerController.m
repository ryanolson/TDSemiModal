//
//  TDDatePickerController.m
//
//  Created by Nathan  Reed on 30/09/10.
//  Copyright 2010 Nathan Reed. All rights reserved.
//

#import "TDDatePickerController.h"


@implementation TDDatePickerController
@synthesize datePicker, delegate;

-(void)viewDidLoad {
    [super viewDidLoad];

	datePicker.date = [NSDate date];

	// we need to set the subview dimensions or it will not always render correctly
	// http://stackoverflow.com/questions/1088163
	for (UIView* subview in datePicker.subviews) {
		subview.frame = datePicker.bounds;
	}
}

-(BOOL)shouldAutorotate {
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

#pragma mark -
#pragma mark Actions

-(IBAction)saveDateEdit:(id)sender {
	if([self.delegate respondsToSelector:@selector(datePicker:didSaveWithDate:)]) {
		[self.delegate datePicker:self didSaveWithDate:self.datePicker.date];
	}
}

-(IBAction)clearDateEdit:(id)sender {
    [self.datePicker setDate:[NSDate date] animated:YES];
    
}

-(IBAction)cancelDateEdit:(id)sender {
	if([self.delegate respondsToSelector:@selector(datePickerDidCancel:)]) {
		[self.delegate datePickerDidCancel:self];
	} else {
		// just dismiss the view automatically?
	}
}

#pragma mark -
#pragma mark Memory Management

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];

	self.datePicker = nil;
	self.delegate = nil;

}



@end


