//
//  ViewController.m
//  QYHotReloadDemo
//
//  Created by 孟庆宇 on 2021/1/12.
//

#import "ViewController.h"
#import <AHHRSocket/AHHRSocketManage.h>
#import "AHOneVC.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) AHHRSocketManage *socketManage;
@property (nonatomic,strong) NSArray *dataSource;
@property (nonatomic,strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSource = [NSArray arrayWithObjects:@"socket connect",@"one", nil];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.rowHeight = 44;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"rootcell"];
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rootcell"];
    cell.textLabel.text = _dataSource[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            // socket connect
            _socketManage = [[AHHRSocketManage alloc] init];
            [_socketManage socketConnetAction];
            break;
        case 1:
            // one
            [self.navigationController pushViewController:[[AHOneVC alloc] init] animated:YES];
            break;
            
        default:
            break;
    }
}


@end
