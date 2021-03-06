//
//  epiBlinkModel.h
//  blink
//
//  Created by jeff on 28/11/2013.
//  Copyright (c) 2013 jeff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface epiBlinkModel : NSObject
{
    unsigned int period;
}
@property(nonatomic, assign)unsigned int period;

-(void)incrementPeriod: (unsigned int)increment;
-(void)decrementPeriod: (unsigned int)decrement;
-(void)startBeat;
-(void)stopBeat;

@end
