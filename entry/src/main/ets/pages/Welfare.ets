import HeaderComponent from "../component/HeaderComponent"
@Entry
@Component
struct Welfare {
  avoidArea = globalThis.avoidArea;
  @State scrollerTop:string = "false";

  @State tabsIndex: number = 0
  private tabsController: TabsController = new TabsController()
  private listScroller: Scroller = new Scroller();

  /*banner图*/
  @Builder Banner(){
    Image($r("app.media.welfare_banner")).width("100%")
  }

  /*tabber*/
  @Builder TabBarItem(index: number, name: string){
    Column(){
      Row(){
        Text(name)
          .fontColor(this.tabsIndex === index ? '#ff4900' : '#182431')
          .fontSize(16)
          .fontWeight(this.tabsIndex === index ? 500 : 400)
          .margin({bottom:4})
      }.justifyContent(FlexAlign.Start).width("100%")
      Row(){
        Divider()
          .width("50%")
          .strokeWidth(2)
          .color('#ff4900')
          .opacity(this.tabsIndex === index ? 1 : 0)
      }.justifyContent(FlexAlign.Start).width("100%")
    }.padding({left:10,right:10}).width(100)
  }
  @Builder Tabber(){
    Flex(){
      Tabs({controller: this.tabsController}) {
        TabContent() {}
        .tabBar(this.TabBarItem(0,"定制好物"))
        TabContent() {}
        .tabBar(this.TabBarItem(1,"0元抢兑"))
        TabContent() {}
        .tabBar(this.TabBarItem(2,"精选推荐"))
        TabContent() {}
        .tabBar(this.TabBarItem(3,"F码"))
        TabContent() {}
        .tabBar(this.TabBarItem(4,"精选推荐"))
        TabContent() {}
        .tabBar(this.TabBarItem(5,"精选推荐"))
        TabContent() {}
        .tabBar(this.TabBarItem(6,"精选推荐"))
        TabContent() {}
        .tabBar(this.TabBarItem(7,"精选推荐"))
      }.barWidth('100%')
      .barHeight(50)
      .barMode(BarMode.Scrollable)
      .onChange((index: number) => {
        this.tabsIndex = index
        this.listScroller.scrollToIndex(index)
      })
    }.width("100%")
    .height(50)
    .backgroundColor(Color.White)
    .borderRadius(5)
  }

  /*列表组标题*/
  @Builder ListTitle(name:string){
    Text(name)
      .fontColor("#333333")
      .fontSize(16)
      .fontWeight(600)
      .padding({top:10,bottom:10})
      .backgroundColor("#f3f3f3")
      .width("100%")
  }
  /*定制列表*/
  @Builder Customized(){
    Row(){
      Flex(){
        Image($r("app.media.welfare_tagA")).width(80)
        Column(){
          Column(){
            Text("潮流便携咖啡杯").fontSize(16).fontWeight(600).margin({bottom:5})
            Text("与未来交朋友,做最酷的自己").fontSize(12).fontColor("#666666")
          }.width("100%").alignItems(HorizontalAlign.Start)
          Row(){
            Text(){
              Span("卷后:")
              Span("￥").fontColor("#ff4900")
              Span("69").fontColor("#ff4900")
            }.fontSize(13)
            Text("￥119").fontSize(14).decoration({ type: TextDecorationType.LineThrough, color: "#999999" }).fontColor("#999999")
          }.width("100%").justifyContent(FlexAlign.Start)
        }.flexGrow(1).height("100%").justifyContent(FlexAlign.SpaceBetween)
      }.width("70%").height("100%").padding(10)
      Column(){
        Column(){
          Text(){
            Span("￥").fontSize(14).fontColor("#ff4900")
            Span("50").fontSize(18).fontColor("#ff4900")
          }.fontWeight(600).margin({bottom:2})
          Text("满1件可用").fontColor("#7c5946").fontSize(12).margin({bottom:2})
          Row(){
            Image($r("app.media.jinbi")).width(20)
            Text("600").fontColor("#fc4a00").fontSize(14).fontWeight(600)
          }
        }

        Text("立即兑换")
          .padding({left:10,right:10,top:5,bottom:5})
          .backgroundColor("#ff5700").fontColor("#fff")
          .fontSize(14)
          .borderRadius(10)
      }.width("30%")
      .backgroundColor("#ffeedc")
      .borderRadius(6)
      .height("100%")
      .padding({top:6,bottom:6})
      .justifyContent(FlexAlign.SpaceBetween)
    }.width("100%")
    .height(110)
    .backgroundColor(Color.White)
    .borderRadius(6)
    .margin({bottom:10})
  }



  build() {
    Flex({direction:FlexDirection.Column}){
      HeaderComponent({
        scrollerTop:$scrollerTop,
        avoidArea:(this.avoidArea / 1.1),
        titleName:"新人福利"
      })
      Column(){
        this.Banner()
        this.Tabber()
      }.width("100%")
        .height(160)
        .padding({left:10,right:10})
        .margin({top:2})
      List({initialIndex:this.tabsIndex,scroller:this.listScroller}){
        ListItemGroup({header:this.ListTitle("定制优惠")}){
          ForEach([0,1,2,3,4,5,6,7,8,9,10],()=>{
            ListItem(){this.Customized()}
          },index=>`${index}`)
        }

        ListItemGroup({header:this.ListTitle("0元抢兑")}){
          ForEach([0,1,2,3,4,5,6,7,8,9,10],()=>{
            ListItem(){this.Customized()}
          },index=>`${index}`)
        }


      }.flexGrow(1)
      .padding({left:10,right:10})
      .sticky(StickyStyle.Header)
      .onScrollIndex((start:number,end:number)=>{
        this.tabsIndex = end
      })
    }.width("100%")
    .height("100%")
    .backgroundColor("#f3f3f3")
  }
}