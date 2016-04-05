//
//  ViewController.m
//  ExampleIOS
//
//  Created by duanefaith on 16/3/22.
//  Copyright © 2016年 duanefaith. All rights reserved.
//

#import "ViewController.h"

typedef int (^on_call_block)(int);

@interface ViewController ()<testProtocol, UIWebViewDelegate, UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)onClick:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ViewController viewDidLoad");
    _webview.delegate = self;
    _textField.delegate = self;
    
    [testClass sharedInstance].protocol = self;
    [[testClass sharedInstance] test:100];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    static int s = 5;
    on_call_block oncall = ^(int a){return a + s;};
    s = 8;
    NSLog(@"result is %d", oncall(3));
    
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.sina.com.cn"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

-(void) onTest:(NSString *)str {
    LOG(@"%@", str);
}

- (IBAction)onClick:(id)sender {
    LOG(@"onClick");
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.sina.com.cn"]];
    [_webview loadRequest:request];
}

- (void) webViewDidStartLoad:(UIWebView *)webView {
    LOG(@"webViewDidStartLoad");
}

- (void) webViewDidFinishLoad:(UIWebView *)webView {
    LOG(@"webViewDidFinishLoad");
//    [webView stringByEvaluatingJavaScriptFromString:@"alert('load finish!')"];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    LOG(@"textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}

- (BOOL) webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return NO;
}

@end
