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


