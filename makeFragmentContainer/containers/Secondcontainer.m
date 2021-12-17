//
//  Secondcontainer.m
//  makeFragmentContainer
//
//  Created by active on 2020/05/07.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import "Secondcontainer.h"

@interface Secondcontainer ()

@end

@implementation Secondcontainer

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_web2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://m.naver.com"]]];
    _web2.allowsBackForwardNavigationGestures=YES;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SecondHome:(id)sender {
    [_web2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://m.naver.com"]]];
}

- (IBAction)SecondForward:(id)sender {
    if(_web2.canGoForward){
        [_web2 goForward];
    }
}

- (IBAction)SecondBack:(id)sender {
    if(_web2.canGoBack){
        [_web2 goBack];
    }
}

- (IBAction)SecondReload:(id)sender {
    [_web2 reload];
}
@end
