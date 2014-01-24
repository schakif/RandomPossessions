//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Steve Chakif on 1/22/14.
//  Copyright (c) 2014 Steve Chakif. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem {
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects: @"Fluffy", @"Rusty", @"Shiny", nil];
    NSArray *randomNounList = [NSArray arrayWithObjects: @"Bear", @"Spork", @"Mac", nil];
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", '0' + rand()%10, 'A' + rand()%26,
                                    '0' + rand()%10, 'A' + rand()%26, '0' + rand()%10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    return newItem;
    
}


- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber {
    self = [super init];
    if (self) {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
        dateCreated = [[NSDate alloc] init];
    }
    return self;
}

//Second Initializer
- (id) initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber {
    return [self initWithItemName:name valueInDollars:0 serialNumber:sNumber];
}

- (id) init {
    return [self initWithItemName:@"Possession" valueInDollars:0 serialNumber:@" "];
}



- (NSString *) itemName {
    return itemName;
}

- (void) setItemName:(NSString *)str {
    itemName = str;
}

- (NSString *) serialNumber {
    return serialNumber;
}

- (void) setSerialNumber:(NSString *)str {
    serialNumber = str;
}

- (int) valueInDollars {
    return valueInDollars;
}

- (void) setValueInDollars:(int)val {
    valueInDollars = val;
}

- (NSDate *) dateCreated {
    return dateCreated;
}

- (void) setDateCreated:(NSDate *)date {
    dateCreated = date;
}



- (NSString *) description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", itemName, serialNumber, valueInDollars, dateCreated];
    return descriptionString;
}


@end
