//
//  ViewController.m
//  iOSJenkins
//
//  Created by 流诗语 on 2019/5/29.
//  Copyright © 2019年 group. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"构建成功");
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self showAlertWithTitle:@"success" vc:self cancelTitle:@"NO" confirmTitle:@"YES"];
}
- (id)showAlertWithTitle:(NSString *)title vc:(UIViewController *)vc cancelTitle:(NSString *)cancelTitle confirmTitle:(NSString *)confirmTitle {
    if ([UIDevice currentDevice].systemVersion.floatValue >= 8.0f) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:confirmTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        [alertController addAction:confirmAction];
        [alertController addAction:cancelAction];
        [vc presentViewController:alertController animated:YES completion:nil];
        return alertController;
    }else{
        return nil;
    }
}

@end
