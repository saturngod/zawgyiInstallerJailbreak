//
//  fontCache.h
//  zawgyiInstall
//
//  Created by Htain Lin Shwe on 10/1/14.
//
//

#import <Foundation/Foundation.h>

@interface fontCache : NSObject
- (void)updateZawgyiAtPath:(NSString*)path;
- (void)restoreZawgyiAtPath:(NSString*)path;

@end
