//
//  OuterSpaceObject.m
//  Outter Space
//
//  Created by Shayne Stark on 1/16/15.
//  Copyright (c) 2015 Spark Apps, LLC. All rights reserved.
//

#import "OuterSpaceObject.h"
#import "AstronomicalData.h"

@implementation OuterSpaceObject
@synthesize name, gravitationalForce, diameter, yearLength, dayLength, temperature, numberOfMoons, nickname, interestingFact, spaceImage;

-(id)init
{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image
{
    self = [super init];
    
    name = data[PLANET_NAME];
    gravitationalForce = [data[PLANET_GRAVITY] floatValue];
    diameter = [data[PLANET_DIAMETER] floatValue];
    yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    temperature = [data[PLANET_TEMPERATURE] floatValue];
    numberOfMoons = [data[PLANET_NUMBER_OF_MOONS] intValue];
    nickname = data[PLANET_NICKNAME];
    interestingFact = data[PLANET_INTERESTING_FACT];
    
    spaceImage = image;
    
    return self;
}

@end
