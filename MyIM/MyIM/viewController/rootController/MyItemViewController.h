//
//  MyItemViewController.h
//  MyIM
//
//  Created by Petey on 5/29/14.
//  Copyright (c) 2014 Petey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyItemViewController : UIViewController
{
    UITableView*    _tableView;
}
+(instancetype)viewController;


-(void)setRootNavigationController:(UINavigationController*)controller;
@end
