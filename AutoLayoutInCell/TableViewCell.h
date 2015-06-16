//
//  TableViewCell.h
//  AutoLayoutInCell
//
//  Created by Alex Antonyuk on 6/11/15.
//  Copyright (c) 2015 Alex Antonyuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Model;

@interface TableViewCell : UITableViewCell

@property (nonatomic, weak) Model *model;

@end
