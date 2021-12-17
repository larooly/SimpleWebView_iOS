//
//  Secondcontainer.h
//  makeFragmentContainer
//
//  Created by active on 2020/05/07.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface Secondcontainer : UIViewController
@property (weak, nonatomic) IBOutlet WKWebView *web2;
- (IBAction)SecondReload:(id)sender;
- (IBAction)SecondBack:(id)sender;
- (IBAction)SecondForward:(id)sender;
- (IBAction)SecondHome:(id)sender;



@end

NS_ASSUME_NONNULL_END
