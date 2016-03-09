//
//  MyCustomModule.m
//  UIExplorer
//
//  Created by xixi.xxx on 16/3/9.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "MyCustomModule.h"
#import "RCTConvert.h"
#import "AppDelegate.h"
#import "RCTEventDispatcher.h"

@implementation MyCustomModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(processString:(NSString *)input)
{
  NSString *inputString =[RCTConvert NSString:input];
  NSLog(@"input string is %@", inputString);
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  [appDelegate.bridge.eventDispatcher sendAppEventWithName:@"EventReminder" body:@{@"name":@"ckk"}];
  
}

RCT_EXPORT_METHOD(handleEvent:(NSString *)input)
{
  NSString *inputString =[RCTConvert NSString:input];
  NSLog(@"the event js received is %@", inputString);
}


@end
