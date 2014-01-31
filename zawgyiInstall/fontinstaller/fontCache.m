//
//  fontCache.m
//  zawgyiInstall
//
//  Created by Htain Lin Shwe on 10/1/14.
//
//

#import "fontCache.h"

@implementation fontCache
- (void)updateZawgyiAtPath:(NSString *)path
{
     NSMutableDictionary *fontFile = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    [[fontFile objectForKey:@"TraitMappings"] setObject:@{@"Plain":@"Zawgyi-One",@"Bold":@"Zawgyi-One"} forKey:@"Zawgyi-One"];
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/zgFont/Zawgyi-One.ttf" forKey:@"Zawgyi-One"];
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/zgFont/Fallback.ttf" forKey:@".PhoneFallback"];
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/zgFont/LastResort.ttf" forKey:@".LastResort"];
    //LastResort
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/zgFont/LastResort.ttf" forKey:@"LastResort"];
    [fontFile writeToFile:path atomically:YES];
}

- (void)restoreZawgyiAtPath:(NSString*)path
{
    NSMutableDictionary *fontFile = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    [[fontFile objectForKey:@"TraitMappings"] removeObjectForKey:@"Zawgyi-One"];
    [[fontFile objectForKey:@"Names"] removeObjectForKey:@"Zawgyi-One"];
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/Cache/Fallback.ttf" forKey:@".PhoneFallback"];
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/Cache/LastResort.ttf" forKey:@".LastResort"];
    //LastResort
    [[fontFile objectForKey:@"Names"] setObject:@"/System/Library/Fonts/Cache/LastResort.ttf" forKey:@"LastResort"];
    [fontFile writeToFile:path atomically:YES];
}
@end
