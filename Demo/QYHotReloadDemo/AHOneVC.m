//
//  AHOneVC.m
//  AHHRSocketDemo
//
//  Created by 孟庆宇 on 2021/1/6.
//

#import "AHOneVC.h"
#import "AHCustomeView.h"

@interface AHOneVC ()

@property (nonatomic, strong) AHCustomeView * customeView;

@end

@implementation AHOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _customeView = [[AHCustomeView alloc] initWithFrame:CGRectMake(32, 45, 100, 100)];
    [self.view addSubview:_customeView];
    
    [_customeView setCustomeColor];
}



@end
