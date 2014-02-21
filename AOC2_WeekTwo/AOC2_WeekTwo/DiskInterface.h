//
//  DiskInterface.h
//  AOC2_WeekTwo
//
//  Created by Bodunrin Ladele on 2/13/14.
//  Copyright (c) 2014 bladele. All rights reserved.
//

#ifndef AOC2_WeekTwo_DiskInterface_h
#define AOC2_WeekTwo_DiskInterface_h

@protocol DiskInterface <NSObject>

@required
-(void)LoadFromDisk;
-(BOOL)SaveToDisk;

@optional
-(int)GetDataSize;

@end

#endif
