//
//  ViewController.m
//  languageTest
//
//  Created by Hao Zheng on 7/14/14.
//  Copyright (c) 2014 Hao Zheng. All rights reserved.
//

#import "ViewController.h"
#import "languageSetting.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;

@property (strong,nonatomic) languageSetting *langSetting;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _langSetting = [[languageSetting alloc]init];
    
	[self updateUI];
}

- (IBAction)clickedChinese:(id)sender {
    [_langSetting setAndSaveLanguage:@"zh-Hans"];
    [self updateUI];
}

- (IBAction)clickedEnglish:(id)sender {
    [_langSetting setAndSaveLanguage:@"en"];
    [self updateUI];
}

-(void)updateUI{
    self.label.text = AMLocalizedString(@"HELLO",nil);
    self.label2.text = AMLocalizedString(@"HELLO2",nil);
    self.label3.text = AMLocalizedString(@"HELLO3",nil);
}

- (IBAction)getLanguage:(id)sender {
    NSString * currentL = [_langSetting getAppLanguage];
    NSLog(@"current language: %@",currentL);
}

@end
