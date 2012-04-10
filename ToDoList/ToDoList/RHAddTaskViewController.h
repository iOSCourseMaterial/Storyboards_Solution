//
//  RHAddTaskViewController.h
//  ToDoList
//
//  Created by Jimmy Theis on 4/9/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHTaskListViewController;

@interface RHAddTaskViewController : UITableViewController

@property (nonatomic, strong) RHTaskListViewController *listViewController;
@property (nonatomic, strong) IBOutlet UITextField *descriptionTextView;

- (IBAction)addButtonPressed:(id)sender;
- (IBAction)cancelButtonPressed:(id)sender;

@end
