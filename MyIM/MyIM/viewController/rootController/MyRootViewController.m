//
//  MyRootViewController.m
//  MyIM
//
//  Created by Petey on 5/29/14.
//  Copyright (c) 2014 Petey. All rights reserved.
//

#import "MyRootViewController.h"
#import "MyConversationViewController.h"
#import "MyContactViewController.h"
#import "MySettingViewController.h"

@interface MyRootViewController ()<UITabBarControllerDelegate>

@end

@implementation MyRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
    
    MyConversationViewController* conversation = [MyConversationViewController viewController];
    MyContactViewController* contact = [MyContactViewController viewController];
    MySettingViewController* setting = [MySettingViewController viewController];
    
    self.viewControllers = @[conversation, contact, setting];

    [self addObserver:self forKeyPath:@"navigationController" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

#pragma mark UITabBarController Delegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    self.title = viewController.title;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"navigationController"]) {
        id controller = [change objectForKey:NSKeyValueChangeNewKey];
        if (controller) {
            for (MyItemViewController* item in self.viewControllers) {
                [item setRootNavigationController:controller];
            }
        }
    }
}
@end
