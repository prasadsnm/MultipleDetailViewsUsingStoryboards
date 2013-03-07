//
//  MasterViewController.m
//  test
//
//  Created by Sebastian Boldt on 07.03.13.
//  Copyright (c) 2013 LetsIDev. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@implementation MasterViewController

- (void)awakeFromNib
{
    self.clearsSelectionOnViewWillAppear = NO;
    self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        DetailViewController * dvc1 = [self.storyboard instantiateViewControllerWithIdentifier:@"view1"];
        self.splitViewController.viewControllers = [NSArray arrayWithObjects:[self.splitViewController.viewControllers objectAtIndex:0],dvc1,nil];
        self.splitViewController.delegate = dvc1;
        
    }
    else if(indexPath.row ==1)
    {
        DetailViewController * dvc2 = [self.storyboard instantiateViewControllerWithIdentifier:@"view2"];
        self.splitViewController.viewControllers = [NSArray arrayWithObjects:[self.splitViewController.viewControllers objectAtIndex:0],dvc2,nil];
        self.splitViewController.delegate = dvc2;

    }
    else if(indexPath.row == 2)
    {
        DetailViewController * dvc3 = [self.storyboard instantiateViewControllerWithIdentifier:@"view3"];
        self.splitViewController.viewControllers = [NSArray arrayWithObjects:[self.splitViewController.viewControllers objectAtIndex:0],dvc3,nil];
        self.splitViewController.delegate = dvc3;

    }
}

@end
