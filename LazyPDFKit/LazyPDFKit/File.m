//
//  File.m
//  LazyPDFKitDemo
//
//  Created by Palanisamy Easwaramoorthy on 3/3/15.
//  Copyright (c) 2015 Lazyprogram. All rights reserved.
//

#import "File.h"
#import "Annotation.h"


@implementation File

@dynamic fileDate;
@dynamic fileSize;
@dynamic pageCount;
@dynamic filePath;
@dynamic annotation;

- (Annotation *)lastObject{
    
    NSArray *sortArray = [self.annotation allObjects];
    
    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:YES];
    NSArray *array = [self.annotation sortedArrayUsingDescriptors:@[sort]];
    
    return [array lastObject];
}


@end
