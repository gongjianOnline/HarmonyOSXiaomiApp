@Entry
@Component
export default  struct Car {

  avoidArea = globalThis.avoidArea;

  /*标题*/
  @Builder Header(){
    Row(){
        Row(){}.width("33%")
        Row(){
          Text("购物车").fontSize(18).fontWeight(600)
        }.width("33%").justifyContent(FlexAlign.Center)
        Row(){
          Text("编辑")
        }
        .width("33%")
        .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height(this.avoidArea/1.4)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40})
    .backgroundColor(Color.White)
  }

  /*购物车列表拆解*/
  @Builder CarHeader(){
    Row(){
      Row(){
        Checkbox({name:"all"}).select(false).width(15).height(15).selectedColor("#f05d4b")
        Text("小米自营").fontSize(14).fontWeight(600).margin({left:10})
      }
      Row(){
        Text("满69元免运费").fontSize(12).fontColor("#5e5e5e")
      }
    }.width("100%")
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder CarListItem(){
    Column(){
      /*商品模版*/
      Row(){
        Checkbox({name:"all"}).select(false).width(15).height(15).selectedColor("#f05d4b")
        Flex(){
          Image($r("app.media.car_listA")).height("100%").width(120).borderRadius(6)
          Column(){
            Text("Xiaomi120W GaN充电器套装 原装同款").fontColor("#363636").fontSize(16)
            Text(){
              Span("白色").fontColor("#646464").fontSize(14)
            }.padding({left:6,right:6,top:4,bottom:4}).backgroundColor("#f6f6f6").borderRadius(4).margin({top:5})
            Row(){
              Text(){
                Span("￥").fontSize(12).fontColor("#ea613f").fontWeight(600)
                Span("269").fontSize(16).fontColor("#ea613f").fontWeight(600)
              }.margin({top:6})

              Row(){
                Text("-").width(30).height("100%").textAlign(TextAlign.Center).border({width:{right:1},color:"#e5e5e5"})
                Text("1").width(40).height("100%").textAlign(TextAlign.Center)
                Text("+").width(30).height("100%").textAlign(TextAlign.Center).border({width:{left:1},color:"#e5e5e5"})
              }.width(100)
              .height(30)
              .justifyContent(FlexAlign.SpaceBetween)
              .borderRadius(20)
              .border({color:"#e5e5e5",width:1})

            }.width("100%")
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({right:10})
          }.flexGrow(1)
          .height("100%")
          .width("100%")
          .alignItems(HorizontalAlign.Start)
          .margin({left:10})
        }.width("92%")
        .height(100)
        .margin({left:10})
      }.width("100%")
      .margin({bottom:15,top:15})
    }
  }


  build() {
    Column(){
      this.Header()
      List(){
        ListItem(){
          this.CarHeader()
        }
        ListItem(){
          this.CarListItem()
        }
        ForEach([1,2,3,4,5,6,7,8],()=>{
          ListItem(){
            this.CarListItem()
          }
        },(item,index)=>`${index}`)
      }.padding({left:10,right:10,top:10,bottom:60})
      .width("100%")
      .height("100%")
      .backgroundColor("#fff")

    }
    .backgroundColor("#f3f3f3")
    .width("100%")
    .height("100%")
  }


}