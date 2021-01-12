//
//  AHHRSocketManage.h
//  AHHRSocket
//
//  Created by 孟庆宇 on 2021/1/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AHHRSocketManage : NSObject

@property (nonatomic, assign) NSInteger port;
@property (nonatomic, copy)   NSString *hostAddress;

/// 创建socket建立连接
- (void)socketConnetAction;

@end

NS_ASSUME_NONNULL_END
