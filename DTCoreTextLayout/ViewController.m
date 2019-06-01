//
//  ViewController.m
//  DTCoreTextLayout
//
//  Created by Su Jiang on 16/9/12.
//  Copyright © 2016年 sunima. All rights reserved.
//

#import "ViewController.h"
#import "SSV2HtmlView.h"
#import "SSPlayerView.h"

@interface ViewController ()<SSV2HtmlViewDelegate>

@property(nonatomic, strong) SSV2HtmlView *htmlView;

@end

@implementation ViewController
{
    SSPlayerView *_playView;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"html"];
    NSString *html = [[NSString alloc] initWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    
//    [[SSLayouterConfig shared] setConfig:@{SSLayouterDefaultTextColor:@"#00ff00"}];
    
    self.htmlView = [[SSV2HtmlView alloc] initWithFrame:CGRectMake(0, 64, size.width, size.height - 64)];
    [self.view addSubview:self.htmlView];
    self.htmlView.html = html;
    self.htmlView.htmlViewDelegate = self;
    
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
//    btn.backgroundColor = [UIColor orangeColor];
//    btn.frame = CGRectMake(90, 100, 100, 50);
//    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn];
//    
//    NSURL *url = [NSURL URLWithString:@"http://images.infzm.com/medias/2016/0115/99657.mp4"];
//    NSURL *movieURL = [[NSBundle mainBundle] URLForResource:@"ElephantSeals" withExtension:@"mov"];
//    SSPlayerView *playView = [[SSPlayerView alloc] initWithFrame:CGRectMake(10, 280, 300, 200) url:movieURL];
//    [self.view addSubview:playView];
//    _playView = playView;
}

/**
 * @param
 */
- (void) test
{
    [_playView play];
}

- (NSAttributedString *)htmlView:(SSV2HtmlView *)htmlView willPasteText:(NSAttributedString *)text inRange:(NSRange)range
{
    return text;
}
/**
 Tells the delegate that the text selection changed in the specified editor view.
 
 @param editorView The editor view whose selection changed.
 */
- (void)htmlViewDidChangeSelection:(SSV2HtmlView *)htmlView
{
    
}

//- (NSArray *)menuItems
//{
//    UIMenuItem *copyItem = [[UIMenuItem alloc] initWithTitle:@"复制" action:@selector(copy:)];
//    UIMenuItem *selectAllItem = [[UIMenuItem alloc] initWithTitle:@"全选" action:@selector(selectAll:)];
//    return @[copyItem, selectAllItem];
//}

//- (BOOL)htmlView:(SSV2HtmlView *)htmlView canPerformAction:(SEL)action withSender:(id)sender
//{
//    return YES;
//}

- (void) htmlView:(SSHtmlView *)htmlView clickImage:(SSImageObject *)imageObject
{
    NSLog(@"clicked image:%@", imageObject.url.absoluteString);
}

- (void) htmlView:(SSHtmlView *)htmlView clickUrl:(NSURL *)url
{
    NSLog(@"clicked url:%@", url.absoluteString);
}

@end
