#import "UINavigationBar+Background.h"


@implementation UINavigationBar (UINavigationBarCategory)

-(void) setBackgroundImage:(UIImage*)image withTag:(NSInteger)bgTag{
	if (image == NULL) {
		return;
	}

	UIImageView *aTabBarBackground = [[UIImageView alloc]initWithImage:image];
	aTabBarBackground.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
	aTabBarBackground.tag = bgTag;
	[self addSubview:aTabBarBackground];
	[self sendSubviewToBack:aTabBarBackground];
	[aTabBarBackground release];
}

/* input: The tag you chose to identify the view */
-(void) resetBackground:(NSInteger)bgTag {
	[self sendSubviewToBack:[self viewWithTag:bgTag]];
}

@end
