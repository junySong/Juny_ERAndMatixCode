//
//  ViewController.m
//  Juny_ERAndMatixCode
//
//  Created by 宋俊红 on 17/3/31.
//  Copyright © 2017年 Juny_song. All rights reserved.
//

#import "ViewController.h"
#import "ScanViewController.h"
#import "QRandMatixCreatViewController.h"

@interface ViewController ()<ScanViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *tipsLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"123");
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(100, 10, 100, 20)];
        view.backgroundColor = [UIColor blueColor];
        [self.view addSubview:view];
    });
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)scanBtnClick:(UIButton *)sender {
    ScanViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ScanViewController"];
    vc.delegate = self;
    [self presentViewController:vc animated:NO completion:^{
        
    }];
}

- (IBAction)createBtnClick:(UIButton *)sender {
    QRandMatixCreatViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"QRandMatixCreatViewController"];
    [self presentViewController:vc animated:NO completion:^{
        
    }];
}

#pragma mark------------------ScanViewControllerDelegate----------------------
- (void)scanViewController:(ScanViewController *)scanVC result:(NSString *)result{
    if (result) {
        _tipsLabel.text = result;
    }
}
@end
