//
//  ViewController.m
//  AutoLayoutInCell
//
//  Created by Alex Antonyuk on 6/11/15.
//  Copyright (c) 2015 Alex Antonyuk. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "TableViewCell.h"

@interface ViewController ()
	<UITableViewDataSource, UIScrollViewDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISwitch *appendDataSwitch;

@property (nonatomic, strong) NSMutableArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	_data = [NSMutableArray array];
	
	self.tableView.rowHeight = UITableViewAutomaticDimension;
	self.tableView.estimatedRowHeight = 115;
	
	[self addData];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (NSInteger)
tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return self.data.count;
}

- (UITableViewCell *)
tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
	if (indexPath.row < self.data.count) {
		cell.model = self.data[indexPath.row];
	}
	return cell;
}

- (void)
scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
	if (self.appendDataSwitch.isOn) {
		[self addData];
	}
}

- (void)
scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
	if (!decelerate && self.appendDataSwitch.isOn) {
		[self addData];
	}
}

- (void)
addData
{
	NSMutableArray *data = [NSMutableArray array];
	for (NSInteger i = 0; i < 15; ++i) {
		[data addObject:[Model new]];
	}
	[self.data addObjectsFromArray:data];
	[self.tableView reloadData];
	[self.tableView flashScrollIndicators];
}

@end
