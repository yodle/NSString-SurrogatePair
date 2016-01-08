//
//  YOViewController.m
//  NSString-SurrogatePair
//
//  Created by Mark Rogers on 01/06/2016.
//  Copyright (c) 2016 Yodle. 
//

#import "YOViewController.h"
#import "NSString+SurrogatePair.h"

CGFloat const YOViewControllerLeftRightPadding = 10;

@interface YOViewController ()

@property (weak, nonatomic) IBOutlet UITextField* surrogatePairTextField;
@property (weak, nonatomic) IBOutlet UITextView* surrogatePairTextView;

@end

@implementation YOViewController

- (BOOL)textField:(UITextField*)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString*)string
{
	if ([string containsSurrogatePair]) {
		textField.text = [textField.text stringByReplacingCharactersInRange:range withString:[string stringByRemovingSurrogatePairs]];
		return NO;
	}
	return YES;
}

-(BOOL)textView:(UITextView*)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString*)text
{
	if ([text containsSurrogatePair]) {
		textView.text = [textView.text stringByReplacingCharactersInRange:range withString:[text stringByRemovingSurrogatePairs]];
		return NO;
	}
	return YES;
}

@end
