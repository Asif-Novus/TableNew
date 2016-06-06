//
//  ViewController.m
//  TableNew
//
//  Created by UsFromMini on 2/16/16.
//  Copyright © 2016 Jamil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *myArray;

@end

@implementation ViewController
@synthesize managedObjectContext;
-(UITableView *)makeTableView
{
    CGFloat x = 0;
    CGFloat y = 100;
    CGFloat width = self.view.frame.size.width;
    CGFloat height = self.view.frame.size.height - 50;
    CGRect tableFrame = CGRectMake(x, y, width, height);
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
    
    tableView.rowHeight = 45;
    tableView.userInteractionEnabled = YES;
    tableView.delegate = self;
    tableView.dataSource = self;
    
    return tableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myArray = @[@"Hello",@"Hi"];
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(300.0, 40.0, 50.0, 50.0)];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goToNextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.tableView = [self makeTableView];
    [self.view addSubview:self.tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
