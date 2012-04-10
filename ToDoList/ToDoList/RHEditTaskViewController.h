//
//  RHEditTaskViewController.h
//  ToDoList
//
//  Created by Jimmy Theis on 4/9/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RHTask, RHTaskListViewController;

@interface RHEditTaskViewController : UITableViewController

@property (nonatomic, strong) RHTask *task;

@property (nonatomic, strong) RHTaskListViewController *taskListController;

@property (nonatomic, strong) IBOutlet UITextField *descriptionField;
@property (nonatomic, strong) IBOutlet UISwitch *doneSwitch;

- (IBAction)descriptionChanged:(id)sender;

- (IBAction)donenessChanged:(id)sender;

@end
