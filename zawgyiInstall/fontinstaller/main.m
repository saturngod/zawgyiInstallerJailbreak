//
//  main.m
//  fontinstaller
//
//  Created by Htain Lin Shwe on 10/1/14.
//
//

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import "fontCache.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSArray *type = [[NSProcessInfo processInfo] arguments];
        fontCache *cache = [[fontCache alloc] init];
     
        if(type.count > 1) {
            NSString *installorremove = type[1];
            
            if([installorremove isEqualToString:@"install"])
            {

                [cache updateZawgyiAtPath:@"/System/Library/Fonts/CGFontCache@2x.plist"];
                [cache updateZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheR@2x.plist"];
                [cache updateZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheU.plist"];
                [cache updateZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheUR.plist"];
                [cache updateZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheUT@2x.plist"];

            }
            else if ([installorremove isEqualToString:@"remove"]){
                //Read Dictionray
                //Remove it
                [cache restoreZawgyiAtPath:@"/System/Library/Fonts/CGFontCache@2x.plist"];
                [cache restoreZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheR@2x.plist"];
                [cache restoreZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheU.plist"];
                [cache restoreZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheUR.plist"];
                [cache restoreZawgyiAtPath:@"/System/Library/Fonts/CGFontCacheUT@2x.plist"];
            }
            
        } // end of argument type.count >1
        
    }
    return 0;
}

