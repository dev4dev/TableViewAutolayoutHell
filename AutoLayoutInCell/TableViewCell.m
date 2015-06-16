//
//  TableViewCell.m
//  AutoLayoutInCell
//
//  Created by Alex Antonyuk on 6/11/15.
//  Copyright (c) 2015 Alex Antonyuk. All rights reserved.
//

#import "TableViewCell.h"
#import "Model.h"

@interface TableViewCell ()

@property (nonatomic, strong) IBOutlet NSLayoutConstraint *containerHeightConstraint;

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIView *content;

@end

@implementation TableViewCell

- (void)awakeFromNib {
    // Initialization code
	
	NSLog(@"new cell");
}

- (void)setModel:(Model *)model
{
	_model = model;
	self.nameLabel.text = model.name;
	if (model.content) {
		self.containerHeightConstraint.constant = 70.0;
	} else {
		self.containerHeightConstraint.constant = 0.0;
	}
}

@end
