//
//  GTViewController.h
//  PageControlExample
//
//  Created by Tim McHale on 5/20/14.
//  Copyright (c) 2014 Gramercy Consultants. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTViewController : UIViewController {
    IBOutlet UILabel *pageNumberLabel;
    int pageNumber;
}
@property (nonatomic, retain) UILabel *pageNumberLabel;
- (id)initWithPageNumber:(int)page;

@end
