#import <Foundation/Foundation.h>
int main(){
    id pool=[NSAutoreleasePool new];
    NSArray *type = [[NSProcessInfo processInfo] arguments];

    NSString *installorremove = type[1];
    if([installorremove isEqualToString:@"install"])
    {
        NSLog(@"INSTALL NOW");
        //Read Dictionray
        //Replace it
    }
    else {
        //Read Dictionray
        //Remove it
        NSLog(@"REMOVE NOW");   
    }
    [pool drain];
    return 0;
}