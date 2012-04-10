//
//  RHEditTaskViewController.m
//  ToDoList
//
//  Created by Jimmy Theis on 4/9/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import "RHEditTaskViewController.h"
#import "RHTask.h"
#import "RHTaskListViewController.h"

@implementation RHEditTaskViewController

@synthesize task = _task;
@synthesize taskListController = _taskListController;
@synthesize doneSwitch = _doneSwitch;
@synthesize descriptionField = _descriptionField;

- (void)setTask:(RHTask *)task {
    _task = task;

    self.descriptionField.text = task.descriptionText;
    self.doneSwitch.on = task.done;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.task != nil) {
        self.descriptionField.text = self.task.descriptionText;
        self.doneSwitch.on = self.task.done;
    }
}


- (void)viewWillDisappear:(BOOL)animated {
    [self.taskListController refreshList];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - IBActions

- (void)descriptionChanged:(id)sender {
    self.task.descriptionText = self.descriptionField.text;
}

- (void)donenessChanged:(id)sender {
    self.task.done = self.doneSwitch.on;
}

@end
