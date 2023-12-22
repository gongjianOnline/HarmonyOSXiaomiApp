import router from '@ohos.router';
@Entry
@Component
struct Page {
  avoidArea = globalThis.avoidArea;

  /*标题*/
  @Builder Header(){
    Row(){
      Row(){
        Image($r("app.media.back")).height(22).onClick(()=>{router.back()})
      }.width("33%")
      .height(20)
      .padding({left:10})
      Row(){
        // Text("购物车").fontSize(18).fontWeight(600)
      }.width("33%").justifyContent(FlexAlign.Center)
      Row(){
        Text("帮助")
      }
      .width("33%")
      .justifyContent(FlexAlign.End)
      .padding({right:10})
    }
    .width("100%")
    .height(this.avoidArea/1.4)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40})
    .backgroundColor(Color.White)
  }


  build() {
    Flex({direction:FlexDirection.Column}){
      this.Header()
      Column(){
        Image($r("app.media.mi")).width(60).fillColor("#fa5a04")
        Text("小米账号登录").margin({top:10,bottom:80})

        Row(){
          TextInput({placeholder:"邮箱/手机号码/小米ID"}).borderRadius(10).padding({top:13,bottom:13}).caretColor("#7f7f7f")
        }.margin({bottom:20})
        Row(){
          TextInput({placeholder:"密码"})
            .borderRadius(10)
            .padding({top:13,bottom:13})
            .type(InputType.Password)
            .caretColor("#7f7f7f")
        }.margin({bottom:20})
        Row(){
          Checkbox({name: 'agree',  group: 'checkboxGroup'}).select(true).selectedColor("#fd5902").width(14).height(14)
          Text(){
            Span("已阅读并同意").fontColor("#808080").fontSize(12)
            Span("《小米商城用户协议》《小米商城隐私政策》《小米账号用户协议》《小米账号隐私政策》").fontColor("#fd5902").fontSize(12)
          }
        }.margin({bottom:20})

        Row(){
          Button("登录").backgroundColor("#fd5902").borderRadius(6).width("100%")
        }

      }.flexGrow(1)
      .width("100%")
      .backgroundColor("#fff")
      .padding({left:20,right:20})
    }
  }
}