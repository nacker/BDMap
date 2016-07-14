//
//  ViewController.m
//  BDMap
//
//  Created by nacker on 16/7/13.
//  Copyright © 2016年 帶頭二哥 QQ:648959. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<BMKMapViewDelegate>
{
    BMKMapView *_mapView;
}
@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [_mapView viewWillAppear];
    _mapView.delegate = self; // 此处记得不用的时候需要置nil，否则影响内存的释放
}

- (void)viewWillDisappear:(BOOL)animated
{
    [_mapView viewWillDisappear];
    _mapView.delegate = nil; // 不用时，置nil
}

- (void)viewDidLoad {
    [super viewDidLoad];
 
    BMKMapView* mapView = [[BMKMapView alloc] initWithFrame:self.view.bounds];
    self.view = mapView;
}

@end
