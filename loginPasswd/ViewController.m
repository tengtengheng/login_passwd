//
//  ViewController.m
//  loginPasswd
//
//  Created by mx1614 on 3/1/19.
//  Copyright © 2019 ludy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (weak) IBOutlet NSTextField *userfiled;
@property (weak) IBOutlet NSTextField *passwdfield;


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"one"]) {
        [self.view.window close];
    }
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)login:(id)sender {
    if ([_userfiled.stringValue isEqualToString:@"ludy"] && [_passwdfield.stringValue isEqualToString:@"123456"]) {
        [self performSegueWithIdentifier:@"main" sender:nil];
        [self.view.window orderOut:nil];
    }
}

@end
