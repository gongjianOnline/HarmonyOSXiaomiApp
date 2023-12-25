import HeaderComponent from '../component/HeaderComponent'
@Entry
@Component
struct Crowdfunding {
  avoidArea = globalThis.avoidArea;
  @State scrollerTop:string = "false";

  /*众筹项目*/
  @Builder CrowdfundingItem(){
    Column(){
      Image($r("app.media.crowdfunfing_banner")).width("100%").borderRadius({topLeft:6,topRight:6})
      Row(){
        Text("包邮")
          .padding({left:8,right:8,top:5,bottom:5})
          .borderRadius(4)
          .backgroundColor("#e23845")
          .fontColor("#fff")
          .fontSize(10)
        Text("米家智能电热毯").fontColor("#212121").fontSize(16).margin({left:10})
      }
      .width("100%")
      .margin({top:10})
      .justifyContent(FlexAlign.Start)
      .padding({left:10})
      Row(){
        Text(){
          Span("￥")
          Span("189")
        }.fontSize(16).fontColor("#f05c40").fontWeight(600)
        Text(){
          Span("￥")
          Span("229")
        }.fontSize(12).fontColor("#b2b2b2").fontWeight(600)
      }.padding({left:10,top:10})
      .justifyContent(FlexAlign.Start)
      .width("100%")
      Row(){
        Image($r("app.media.crowdfunfing_schedule")).width("75%").height(6).borderRadius(10).margin({top:10})
        Image($r("app.media.hot")).width(20).margin({left:4,right:4})
        Text(){
          Span(">")
          Span("999")
          Span("%")
        }.fontColor("#eb3742").fontSize(12).fontWeight(600)
      }.width("100%")
      .padding({left:10})
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Bottom)
    }.width("100%")
    .backgroundColor("#fff")
    .padding({bottom:20})
    .margin({top:10 })
  }

  /*众筹标签*/
  @Builder CrowdfundingTag(title:string){
    Row(){
      Text(title).fontColor("#1f1f1f").fontSize(16)
      Text("更多").fontSize(14).fontColor("#b8b8b8")
    }.width("100%").padding({top:10,bottom:10}).justifyContent(FlexAlign.SpaceBetween)
  }
  @Builder CrowdfundingList(){
    Grid(){
      ForEach([0,1,2,3,4,5],(item,index)=>{
        GridItem(){
          Column(){
            Image($r("app.media.crowdfunding_list1")).width("100%").borderRadius(10)
            Text("小米立式无线充电器").fontSize(14)
              .padding({top:10,bottom:5})
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(1)
            Text(){
              Span("￥")
              Span("199")
            }.fontSize(14).fontWeight(600).fontColor("#f55a3c")
          }.justifyContent(FlexAlign.Start).height("100%").width("100%")
        }.width("100%")
        .height("100%")
      },index=>`${index}`)
    }.columnsTemplate("1fr 1fr 1fr")
    .rowsTemplate("1fr 1fr")
    .rowsGap(10)
    .columnsGap(10)
    .height(310)
    .width("100%")
    .backgroundColor("#fff")
    .borderRadius(10)
    .padding(10)
  }


  build() {
    Flex({direction:FlexDirection.Column}){
      HeaderComponent({
        titleName:"小米众筹",
        avoidArea:(this.avoidArea / 1.4),
        scrollerTop:$scrollerTop
      })
      List(){
        ListItem(){this.CrowdfundingItem()}
        ListItem(){this.CrowdfundingItem()}

        ForEach(["年度众筹之星","年度众筹新锐之星", "年度众筹速度之星"],(item,index)=>{
          ListItem(){this.CrowdfundingTag("年度众筹速度之星")}
          ListItem(){this.CrowdfundingList()}
        },index=>`${index}}`)


      }.flexGrow(1).padding({left:10,right:10,top:20})
    }.width("100%")
    .height("100%")
    .backgroundColor("#efefef")
  }
}