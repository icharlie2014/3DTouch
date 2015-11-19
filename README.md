# 3DTouch
简单的3DTouch演示（OC版）

Info.plist 里加字段 UIApplicationShortcutItems  （Array)

在数组中加入几个值item 0 (Dictionary)...

以下是可设置几个键值属性 

（必须）UIApplicationShortcutItemType：这个选项表示这个菜单项的唯一标识。

（必须）UIApplicationShortcutItemTitle：这个选项表示菜单项显示的标题。

（可选）UIApplicationShortcutItemSubtitle：这个表示菜单项的子标题。

（可选）UIApplicationShortcutItemIconType：这个属性表示菜单的图标，系统自带的图标。

（可选）UIApplicationShortcutItemIconFile：这个属性表示菜单图标的文件名，可以使用自定义的图标。

（可选）UIApplicationShortcutItemUserInfo：这个代表了菜单项点击后，传入的用户信息，也是可选的。


必须：
- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void(^)(BOOL succeeded))completionHandler{

}

