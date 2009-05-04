#import <Foundation/Foundation.h>

@interface UINavigationBar (UINavigationBarCategory)

-(void) setBackgroundImage:(UIImage*)image withTag:(NSInteger)bgTag;
-(void) resetBackground:(NSInteger)bgTag;

@end