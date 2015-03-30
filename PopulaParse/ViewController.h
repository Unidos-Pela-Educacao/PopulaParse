//
//  ViewController.h
//  PopulaParse
//
//  Created by Conrado Werlang on 3/30/15.
//  Copyright (c) 2015 Infinity Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Questao.h"

@interface ViewController : UIViewController 


@property (strong, nonatomic) NSMutableArray* alternativas;

@property (nonatomic, strong) Questao* questao;

@end

