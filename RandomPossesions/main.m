//
//  main.m
//  RandomPossesions
//
//  Created by Steve Chakif on 1/22/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        for (int i = 0; i<10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        //for (int i = 0; i < [items count]; i++) {
        //    NSLog(@"%@", [items objectAtIndex:i]);
        //}
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        items = nil;
    }
    return 0;
}

