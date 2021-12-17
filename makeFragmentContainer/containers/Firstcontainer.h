//
//  Firstcontainer.h
//  makeFragmentContainer
//
//  Created by active on 2020/05/07.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Firstcontainer : UIViewController{
    NSTimer *TimerMovement;
}
@property (weak, nonatomic) IBOutlet WKWebView *webview1;
- (IBAction)FisrtReload:(id)sender;
- (IBAction)FirstBack:(id)sender;
- (IBAction)FirstForward:(id)sender;
- (IBAction)FirstHome:(id)sender;


@property (nonatomic,assign) bool backtrue;

@end

NS_ASSUME_NONNULL_END
