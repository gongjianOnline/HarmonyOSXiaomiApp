@Entry
@Component
export default  struct Category {

  avoidArea = globalThis.avoidArea;

  /*菜单数据*/
  @State menuIndex:number = 0;
  menuList:Array<string> = [
    "Xiaomi手机",
    "Redmi手机",
    "手机配件",
    "电脑平板",
    "智能穿戴",
    "电视",
    "大家电",
    "小家电",
  ]

  /*头部搜索栏*/
  @Builder Header(){
    Row(){
      TextInput({
        placeholder:"红米K70",
      }).enterKeyType(EnterKeyType.Search)
        .placeholderFont({
          size:15
        })
        .caretColor(Color.White)
        .width("80%")
        .height(30)
        .padding({left:13,right:10})
        .backgroundColor("rgba(195,195,195,0.5)")
      Image($r("app.media.message")).height(24).fillColor("#1b1b1b")
    }
    .width("100%")
    .height(this.avoidArea/1.4)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceAround)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40,left:10,right:10})
    .backgroundColor(Color.White)
    .animation({
      duration: 1000,
      curve: Curve.EaseOut,
      iterations: 1,
      playMode: PlayMode.Normal
    })
  }


  build() {
    Column(){
      this.Header()

      /*商品菜单(左右)*/
      Row(){
        Column(){
          Text("推荐").padding({top:10,left:10}).fontColor("#626262").fontSize(14)
          List(){

            ForEach(this.menuList,(item,index)=>{
              ListItem(){
                Row(){
                  Row(){}.width(4).height(20).margin({right:8}).backgroundColor(this.menuIndex == index?"#fb6c04":"rgba(255,255,255,0)")
                  Text(item).fontSize(14).fontWeight(this.menuIndex == index?500:400)
                }.width("100%").justifyContent(FlexAlign.Start)
              }.height(40).width("100%").onClick(()=>{this.menuIndex = index})
            },(item,index)=>`${index}`)

          }.padding({top:10})
        }.width("30%")
        .height("100%")
        .alignItems(HorizontalAlign.Start)
        .border({color:Color.Red,width:1})

        Column(){
          Text("商品区")
        }.width("70%")
        .height("100%")
        .border({color:Color.Blue,width:1})

      }


    }.width("100%")
    .height("100%")
  }
}