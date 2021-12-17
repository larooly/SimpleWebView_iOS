//
//  ViewController.m
//  makeFragmentContainer
//
//  Created by active on 2020/05/07.
//  Copyright © 2020 activeKJS. All rights reserved.
//

#import "ViewController.h"
#import "Firstcontainer.h"
#import "Secondcontainer.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize firstContainer,secondContainer;

Secondcontainer *second;
bool naverORgoogle=true;
- (void)viewDidLoad {
    [super viewDidLoad];
    
  [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"test"];
    // Do any additional setup after loading the view.
    [[NSUserDefaults standardUserDefaults] synchronize];
}
- (IBAction)showcontainer:(UISegmentedControl*)sender {
    
    if(sender.selectedSegmentIndex==0){
        [UIView animateWithDuration:0.5 animations:^{
            self->firstContainer.alpha =0.0;
            self->secondContainer.alpha =1.0;
            
        }];
        
        naverORgoogle=true;
    }else{
        [UIView animateWithDuration:1 animations:^{
            self->firstContainer.alpha =1.0;
            self->secondContainer.alpha =0.0;
        }];
        naverORgoogle = false;
    }
}

- (IBAction)Testbutton:(id)sender {
   // Firstcontainer *ti = [[Firstcontainer alloc] init];
    if(_Tbutt.backgroundColor==UIColor.brownColor){
    _Tbutt.backgroundColor=UIColor.blueColor;
        [[NSUserDefaults standardUserDefaults]setValue:@"dp" forKey:@"toTe"];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"%@", [[NSUserDefaults standardUserDefaults]valueForKey:@"test"]);
        
        [[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"test"];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        
    }
    else{
        _Tbutt.backgroundColor=UIColor.brownColor;
        
        [[NSUserDefaults standardUserDefaults]setValue:@"bye" forKey:@"toTe"];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"%@", [[NSUserDefaults standardUserDefaults]valueForKey:@"test"]);
        
        [[NSUserDefaults standardUserDefaults]setBool:NO forKey:@"test"];
        
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    Firstcontainer *ti =[self.storyboard
                         instantiateViewControllerWithIdentifier:@"first"];
    ti.backtrue=[[NSUserDefaults standardUserDefaults]valueForKey:@"test"];
    //[[NSUserDefaults standardUserDefaults]setBool:YES forKey:@"test"];
    //NSLog(@"%d",ti.webview1.canGoBack);
    [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
