
import router from '@ohos.router'
@Component
export default struct HeaderComponent{

  @Prop titleName:string
  @Prop avoidArea:number
  @Link scrollerTop:string

  build(){
    Row(){
      Row(){
        Image($r("app.media.back")).height(22).onClick(()=>{router.back()}).fillColor(this.scrollerTop === "false"?"#1b1b1b":Color.White)
      }.width("33%")
      .height(20)
      .padding({left:10})
      Row(){
        Text(this.titleName).fontSize(18).fontWeight(600).fontColor(this.scrollerTop === "false"?"#1b1b1b":Color.White)
      }.width("33%").justifyContent(FlexAlign.Center)
      Row(){
      }
      .width("33%")
      .justifyContent(FlexAlign.End)
      .padding({right:10})
    }
    .width("100%")
    .height(this.avoidArea)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40})
    .backgroundColor(this.scrollerTop=="false"?Color.White:"rgba(255,255,255,0.0)")
    .animation({
      duration: 1000,
      curve: Curve.EaseOut,
      iterations: 1,
      playMode: PlayMode.Normal
    })
  }
}