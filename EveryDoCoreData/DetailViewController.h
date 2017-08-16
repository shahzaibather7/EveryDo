//
//  DetailViewController.h
//  EveryDoCoreData
//
//  Created by Mohammad Shahzaib Ather on 2017-08-16.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EveryDoCoreData+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

