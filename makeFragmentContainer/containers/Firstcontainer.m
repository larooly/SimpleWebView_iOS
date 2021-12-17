//
//  Firstcontainer.m
//  makeFragmentContainer
//
//  Created by active on 2020/05/07.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import "Firstcontainer.h"

@interface Firstcontainer ()

@end

@implementation Firstcontainer
//@synthesize lele;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_webview1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.com"]]];
    _webview1.allowsBackForwardNavigationGestures=YES;
    //밀어서 넘어가기
    [[NSUserDefaults standardUserDefaults] setBool:false forKey:@"test"];
    [[NSUserDefaults standardUserDefaults] synchronize];
//    TimerMovement=[NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(bback) userInfo:nil repeats:YES];
}
//-(void)gotoback{
//    if(_webview1.canGoBack){
//        [_webview1 goBack];
//      //  [_webview1 reload];
//    }
//}

- (IBAction)FirstHome:(id)sender {
    [_webview1 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.google.com"]]];
    
}

- (IBAction)FirstForward:(id)sender {
    if(_webview1.canGoForward){
        [_webview1 goForward];
    }
}

- (IBAction)FirstBack:(id)sender {
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults]valueForKey:@"test"]);
    if(_webview1.canGoBack){
    [_webview1 goBack];
    }
}

- (IBAction)FisrtReload:(id)sender {
    [_webview1 reload];
}
-(void)bback{
     [[NSUserDefaults standardUserDefaults] synchronize];
    if(_backtrue){
        [_webview1 goBack];
      //  _backtrue=false;

        NSLog(@"B");
    }
    else{
        NSLog(@"A");
    }
//    _backtrue=[[NSUserDefaults standardUserDefaults]valueForKey:@"test"];
//     [[NSUserDefaults standardUserDefaults] synchronize];
//    if([[NSUserDefaults standardUserDefaults]valueForKey:@"test"]){
//        if(_webview1.canGoBack){
//            [_webview1 goBack];
//        }
//    }
   // else{}
    
    
    
    
    
//    NSLog(@"%@",[[NSUserDefaults standardUserDefaults]valueForKey:@"toTe"]);
//    if(_backtrue){
////        [_webview1 goBack];
////        [NSUserDefaults resetStandardUserDefaults];
////        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"test"];
////
////        [[NSUserDefaults standardUserDefaults] synchronize];
//        //[NSUserDefaults didChangeValueForKey:@"test"];
//
//      //  NSLog(@"k");
//    }
//    else{
//      //  NSLog(@"A");
//    }
    
}


//-(void)gotoforward{
//    if(_webview1.canGoForward){
//        [_webview1 goForward];
//    }
//}
//-(void)reloading{
//    [_webview1 reload];
//}

//-(void)tees{
//    _lele.text=@"ㅇ";
//    NSLog(@"여기");
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
