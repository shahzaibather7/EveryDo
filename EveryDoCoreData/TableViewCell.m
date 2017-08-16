//
//  TableViewCell.m
//  EveryDoCoreData
//
//  Created by Mohammad Shahzaib Ather on 2017-08-16.
//  Copyright © 2017 Mohammad Shahzaib Ather. All rights reserved.
//

#import "TableViewCell.h"
#import "MasterViewController.h"
#import "DetailViewController.h"


@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)doneButton:(id)sender {
    self.todoItem = [[ToDo alloc] init];
   
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:self.todoitem.todoDescription];
    [attributeString addAttribute:NSStrikethroughStyleAttributeName
                            value:@2
                            range:NSMakeRange(0, [attributeString length])];
    self.previewDescriptionLabel.attributedText = attributeString;
    
}

@end
