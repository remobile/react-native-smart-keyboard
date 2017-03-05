#import "RCTSmartKeyboard.h"
#import "IQKeyboardManager.h"

@implementation RCTSmartKeyboard
RCT_EXPORT_MODULE()

- (id)init {
    self = [super init];
    if (self) {
        IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
        //开启，默认为YES
        manager.enable = YES;
        //控制点击背景是否收起键盘，默认为NO
        manager.shouldResignOnTouchOutside = YES;
        //控制键盘上的工具条文字颜色是否用户自定义
        manager.shouldToolbarUsesTextFieldTintColor = YES;
        //控制是否显示键盘上的工具条，默认为YES
        manager.enableAutoToolbar = NO;
        //是否显示Placeholder，默认为YES
        manager.shouldShowTextFieldPlaceholder = NO;
        //设置顺序为按照位置
        manager.toolbarManageBehaviour = IQAutoToolbarByPosition;
    }
    return self;
}

RCT_EXPORT_METHOD(enable)
{
    [IQKeyboardManager sharedManager].enable = YES;
}

RCT_EXPORT_METHOD(disable)
{
    [IQKeyboardManager sharedManager].enable = NO;
}
@end
