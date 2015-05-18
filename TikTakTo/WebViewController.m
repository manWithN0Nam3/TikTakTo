//
//  WebViewController.m
//  TikTakTo
//
//  Created by Alex Santorineos on 5/17/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    self.webView.delegate=self;


    NSString *stringURL = @"http://en.wikipedia.org/wiki/Tic-tac-toe";


    NSURL *url = [NSURL URLWithString:stringURL];

    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];

    [self.webView loadRequest:urlRequest];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{

    [self.spinner startAnimating];


}
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    [self.spinner stopAnimating];
    self.spinner.hidesWhenStopped=YES;

}
@end
