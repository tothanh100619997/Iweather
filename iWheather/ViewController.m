//
//  ViewController.m
//  iWheather
//
//  Created by Nguyen Thanh To on 5/27/17.
//  Copyright © 2017 ThanhTo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;
@property (weak, nonatomic) IBOutlet UILabel *quote;

@end

@implementation ViewController
{
    NSArray* quotes;
    NSArray* locations;
    NSArray* photoFiles;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    quotes = @[@"Một con ngựa đau cả tàu bỏ cỏ", @"Có công mài sắt có ngày nên kim", @"Chớ thấy sóng cả mà ngã tay chèo", @"Không có gì quý hơn độc lập tự do hạnh phúc", @"Đi một ngày đàng học một sàng không"];
    
    locations = @[@"Hai Ba Trung, Hanoi", @"Sydney, Australia", @"New York, USA"];
    
    photoFiles = @[@"rain", @"sunny", @"thunder", @"windy"];
    
}
- (IBAction)updataweather:(id)sender {
    int quoteIndex = arc4random_uniform((int)quotes.count);
    NSLog(@"%d",quoteIndex);
    _quote.text=quotes[quoteIndex];
    int photoFilesIndex =arc4random_uniform((int)photoFiles.count);
    _weatherIcon.image=[UIImage imageNamed:photoFiles[photoFilesIndex]];
    int locationIndex =arc4random_uniform((int)locations.count);
    _location.text=locations[locationIndex];
    NSString* string =[NSString stringWithFormat:@"%2.1f",[self getTemperature]];
    [self.temperature setTitle:string forState:UIControlStateNormal];
    
    

}
- (float) getTemperature {
    return 14+ arc4random_uniform((int)18)+arc4random()/(float)INT32_MAX;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
