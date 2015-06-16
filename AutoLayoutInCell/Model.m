//
//  Model.m
//  AutoLayoutInCell
//
//  Created by Alex Antonyuk on 6/11/15.
//  Copyright (c) 2015 Alex Antonyuk. All rights reserved.
//

#import "Model.h"

static NSArray *strings;


@implementation Model

+ (void)
initialize
{
	if (!strings) {
		strings = @[
					@"Lorem ipsum dolor sit amet, consectetur adipisicing elit",
					@"sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
					@"Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
					];
	}
}

- (instancetype)
init
{
	if (self = [super init]) {
		_name = strings[arc4random_uniform((unsigned int)strings.count)];
		_content = (BOOL)arc4random_uniform(2);
	}
	
	return self;
}

@end
