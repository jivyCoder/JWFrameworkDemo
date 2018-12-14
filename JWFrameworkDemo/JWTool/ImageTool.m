//
//  ImageTool.m
//  JWToolDemo
//
//  Created by JW on 2018/12/14.
//  Copyright © 2018 jw. All rights reserved.
//

#import "ImageTool.h"

@implementation ImageTool
+ (UIImage *)getImage {
    //Dynamic Library
//    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
//    NSURL *url = [bundle URLForResource:@"JWTool" withExtension:@"bundle"];
//    NSBundle *plistPath = [NSBundle bundleWithURL:url];
//    NSString *path = [plistPath pathForResource:@"woo" ofType:@"jpg"];
//    UIImage *image = [UIImage imageWithContentsOfFile:path];
    
//    Static Library
    NSString *path = [[NSBundle mainBundle] pathForResource:@"JWFrameworkDemo.framework/JWTool" ofType:@"bundle"];
    NSBundle *plistPath = [NSBundle bundleWithPath:path];
    NSString *paths = [plistPath pathForResource:@"woo" ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:paths];
    return image;
}
@end
