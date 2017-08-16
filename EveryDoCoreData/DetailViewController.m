//
//  DetailViewController.m
//  EveryDoCoreData
//
//  Created by Mohammad Shahzaib Ather on 2017-08-16.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo+CoreDataClass.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.todoDescription;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo *)newDetailItem {
    if (self.detailItem != newDetailItem) {
        self.detailItem.todoDescription = newDetailItem.todoDescription;
        
        // Update the view.
        [self configureView];
    }
}


@end
