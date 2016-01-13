//
//  ViewController.m
//  simpleTest
//
//  Created by 章芝源 on 16/1/13.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property(nonatomic, strong)UIScrollView *scrollView;
@end

@implementation ViewController

//- (void)loadView
//{
//    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    scrollView.backgroundColor = [UIColor redColor];
//    scrollView.scrollsToTop = YES;
//    self.scrollView = scrollView;
//    self.view = scrollView;
//    
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 100, 400, 400);
    [self.view addSubview:scrollView];
    self.scrollView  = scrollView;
    self.scrollView.delegate = self;
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"double"]];
    [self.scrollView addSubview:imageView];
    
    self.scrollView.contentSize = imageView.bounds.size;
}

//正在拖动的的时候调用,  很频繁
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%@", scrollView);
}

//即将开始拖拽的时候调用
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"%s", __FUNCTION__);
}

//停止拖拽的时候调用
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"%s", __FUNCTION__);
}

//到顶部,  自动反倒顶部
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView
{
    return YES;
}

//到顶部后调用
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView
{
    //当已经滚动到, 视图顶部的时候调用
    NSLog(@"我被调用了");
}
@end
