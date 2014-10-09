#define DR_OFFERWALL    1   //积分墙
#define DR_FREEWALL     2   //免费墙
#define DR_INSERSCREEN  3   //插播广告
#define DR_FULLSCREEN   4   //全屏广告
#define DR_BANNER       5   //BANNER
/*
 key:applicationKey
 isuse:是否开启定位
 appuserid:用户提供的唯一标示, 推荐使用应用程序的用户名
 */
#define DR_INIT(key, isuse, userid) [Defdeaga initialize:key location:isuse appuserid:userid];
#define DR_SHOW(type, view, dg) [Defdeaga show:type on:view delegate:dg];
#define DR_CREATE(type, dg) [Defdeaga create:type delegate:dg];
#define GETSCORE(score_block) [Defdeaga getScore:score_block];
#define SPENDSCORE(sore,score_block) [Defdeaga spendScore:sore callBack:score_block];
@protocol Aed <NSObject>
@optional
/*
 请求广告条数
 如果广告条数大于0，那么code=0，代表成功
 反之code = -1
 */
- (void)didDataReceivedView:(UIView *)view code:(int)code;
/*
 广告弹出时回调
 */
- (void)didViewOpenView:(UIView *)view;
/*
 点击广告关闭按钮的回调，不代表广告从内存中释放
 */
- (void)didMainCloseView:(UIView *)view;
/*
 广告释放时回调，从内从中释放
 */
- (void)didViewCloseView:(UIView *)view;
/*
 曝光回调
 */
- (void)didReportedView:(UIView *)view data:(id)data;
/*
 点击广告回调
 */
- (void)didClickedView:(UIView *)view data:(id)data;
/*
 点击跳转回调
 */
- (void)didJumpedView:(UIView *)view data:(id)data;
@end
typedef void (^scoreResultCallback)(int result);
typedef void (^spendScoreResultCallback)(NSString *result);
@interface Defdeaga : NSObject<NSURLConnectionDelegate>
+(void)initialize:(NSString *)key location:(BOOL)value appuserid:(NSString *)appuserid;
+(void)show:(NSInteger)space on:(UIView *)view delegate:(id<Aed>)delegate;
+(void)create:(NSInteger)space delegate:(id<Aed>)delegate;
+(void)getScore:(scoreResultCallback) score;
+(void)spendScore:(int) point callBack :(spendScoreResultCallback) score;
#pragma mark 获取积分/积分回调 callback ?
@end
