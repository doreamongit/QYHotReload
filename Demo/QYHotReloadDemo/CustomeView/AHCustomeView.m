//
//  AHCustomeView.m
//  AHHRSocketDemo
//
//  Created by 孟庆宇 on 2021/1/6.
//

#import "AHCustomeView.h"
#import "TestLog.h"

@implementation AHCustomeView

- (void)setCustomeColor
{
    self.backgroundColor = [UIColor redColor];
    
    NSLog(@"--2233-:%@",NSStringFromCGRect(self.frame));
    
    [TestLog setCustomeColor];
}

@end
