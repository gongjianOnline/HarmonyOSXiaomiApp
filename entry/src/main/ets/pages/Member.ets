import HeaderComponent  from "../component/HeaderComponent"

@Entry
@Component
struct Member {
  avoidArea = globalThis.avoidArea;
  @State scrollerTop:string = "true";

  /*banner*/
  @Builder Banner(){
      RelativeContainer(){
        Image($r("app.media.member_banner"))
          .id("member_banner")
          .width("100%")
          .alignRules({
            top: { anchor: '__container__', align: VerticalAlign.Top },
            left: { anchor: '__container__', align: HorizontalAlign.Start }
          })
        Column(){
          Row(){
            Text("小米FRIEND会员").fontSize(20).fontWeight(600)
          }.margin({bottom:10})
          Row(){
            Text("有效期至2024-09-09").fontSize(14)
          }.margin({bottom:20})
        }.width("60%")
        .height("100%")
        .id("member_title")
        .alignRules({
          top: { anchor: 'member_banner', align: VerticalAlign.Top },
          left: { anchor: 'member_banner', align: HorizontalAlign.Start }
        })
        .justifyContent(FlexAlign.End)

        Column(){
          Text("立即续卡").padding({left:10,right:10,top:5,bottom:5})
            .backgroundColor("#514e5f")
            .borderRadius(4)
            .fontColor("#f6e4e2")
            .height(40)
            .margin({bottom:30})
        }.width("40%")
        .height("100%")
        .id("member_button")
        .alignRules({
          top: { anchor: 'member_banner', align: VerticalAlign.Top },
          left: { anchor: 'member_banner', align: HorizontalAlign.Center }
        })
        .justifyContent(FlexAlign.End)
        .alignItems(HorizontalAlign.End)
        .margin({bottom:20})

      }.width("100%")
      .height(190)
  }

  /*菜单*/
  @Builder Menu(){
    Column(){
      Image($r("app.media.member_list"))
      Row(){
        Column(){
          Image($r("app.media.member_bannerA")).width(30)
          Text("尊享优惠卷").fontSize(12).fontColor("#e8e6d7").margin({top:5})
        }
        Column(){
          Image($r("app.media.member_bannerB")).width(30)
          Text("30天保价").fontSize(12).fontColor("#e8e6d7").margin({top:5})
        }
        Column(){
          Image($r("app.media.member_bannerC")).width(30)
          Text("F码优先购").fontSize(12).fontColor("#e8e6d7").margin({top:5})
        }
        Column(){
          Image($r("app.media.member_bannerD")).width(30)
          Text("双倍米金").fontSize(12).fontColor("#e8e6d7").margin({top:5})
        }
      }.width("100%")
      .height(70)
      .backgroundColor("#43434d")
      .justifyContent(FlexAlign.SpaceAround)
      .margin({bottom:20})
    }
  }

  /*优惠列表*/
  @Builder Customized(){
    Row(){
      Flex(){
        Image($r("app.media.member_pc")).width(80)
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

        Text("立即抢购")
          .padding({left:10,right:10,top:5,bottom:5})
          .backgroundColor("#545665").fontColor("#f7e8e1")
          .fontSize(14)
          .borderRadius(10)
      }.width("30%")
      .backgroundColor("#ffeedc")
      .borderRadius(6)
      .height("100%")
      .padding({top:6,bottom:6})
      .justifyContent(FlexAlign.SpaceBetween)
      .border({color:"#d3bea3",width:{left:0.5},style:{left:BorderStyle.Dashed}})
    }.width("100%")
    .height(110)
    .backgroundColor("#feedd9")
    .borderRadius(6)
    .margin({bottom:10})
  }


  build() {
    Column(){
      Stack({alignContent:Alignment.TopStart }){
        HeaderComponent({
          titleName:"会员专享",
          avoidArea:(this.avoidArea/1.4),
          scrollerTop:$scrollerTop
        })
        List(){
          ListItem(){this.Banner()}
          ListItem(){this.Menu()}
          ForEach([0,1,2,3,4,5,6],(item,index)=>{
            this.Customized()
          },(index)=>`${index}`)

        }.width("100%")
        .height("100%")
      }
    }.width("100%")
    .height('100%')
  }
}