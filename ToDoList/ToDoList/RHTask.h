//
//  RHTask.h
//  ToDoList
//
//  Created by Jimmy Theis on 4/9/12.
//  Copyright (c) 2012 Rose-Hulman Institute of Technology. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RHTask : NSObject

@property (nonatomic, strong) NSString *descriptionText;

@property (nonatomic, assign) BOOL done;

@end
