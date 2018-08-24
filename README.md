# UINavigation-HKFixSpace
pod 'UINavigation-HKFixSpace'

此DEMO借鉴https://blog.csdn.net/spicyshrimp/article/details/77891717
多增加了手势开启 （自动）
关闭手势 

某个类关闭手势
```
- (void)viewDidAppear:(BOOL)animated
{
[super viewDidAppear:animated];
[UIViewController popGestureClose:self];
}

- (void)viewWillDisappear:(BOOL)animated
{
[super viewWillDisappear:animated];
[UIViewController popGestureOpen:self];
}
```
快速创建 rightBarButtonItem 
```
self.navigationItem.rightBarButtonItem = [UIBarButtonItem hk_initWithBarButtonImage:@"Image" buttonType:UIButtonTypeCustom ControlContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight btnClick:^{
NSLog(@"btnClick");
}];

```
`leftBarButtonItem`  默认是距离父视图0.
需要改变space
在`AppDelegate`中
```
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// Override point for customization after application launch.
HKNavigationFixSpaceConfig *config = [HKNavigationFixSpaceConfig shared];
config.hk_leftSpace = 10;
config.hk_rightSpace = 5;
config.hk_allowSpace = YES;
return YES;
}'
```




