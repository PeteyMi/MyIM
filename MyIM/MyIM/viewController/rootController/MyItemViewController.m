//
//  MyItemViewController.m
//  MyIM
//
//  Created by Petey on 5/29/14.
//  Copyright (c) 2014 Petey. All rights reserved.
//

#import "MyItemViewController.h"

@interface MyItemViewController ()
{
    UINavigationController* _navigationController;
}
@end

@implementation MyItemViewController

+(instancetype)viewController
{
    return [[[self class] alloc] init];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loadView
{
    [super loadView];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UINavigationController*)navigationController
{
    return _navigationController;
}
-(void)setRootNavigationController:(UINavigationController*)controller
{
    _navigationController = controller;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
