//
//  ViewController.m
//  QRCodeTest
//
//  Created by 刘欢欢 on 2018/6/29.
//  Copyright © 2018年 刘欢欢. All rights reserved.
//

#import "ViewController.h"

#import "QRCodeGenerator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
  imageView.center = self.view.center;
  [self.view addSubview:imageView];
  UIImage *image = [QRCodeGenerator qrImageForString:@"武陵人捕鱼为业。缘溪行，忘路之远近。忽逢桃花林，夹岸数百步，中无杂树，芳草鲜美，落英缤纷。渔人甚异之，复前行，欲穷其林。" imageSize:200];
  
  imageView.image = image;
}



@end
