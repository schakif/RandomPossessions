//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Steve Chakif on 1/22/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject {
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
}

+ (id) randomItem;

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

//Second Initializer
- (id)initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;

- (NSString *) itemName;
- (void) setItemName:(NSString *) str;

- (NSString *) serialNumber;
- (void) setSerialNumber:(NSString *) str;

- (int) valueInDollars;
- (void) setValueInDollars:(int) val;

- (NSDate *) dateCreated;
- (void) setDateCreated:(NSDate *)date;


@end
