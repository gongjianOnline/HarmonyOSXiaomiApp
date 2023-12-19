import { MenuListItem } from '../models/server/menuList';
@Entry
@Component
export default  struct Server {
  avoidArea = globalThis.avoidArea;

  /*菜单栏*/
  menuList:MenuListItem[] = [
    {url:$r("app.media.server_menu1"),title:"我要安装"},
    {url:$r("app.media.server_menu2"),title:"我要维修"},
    {url:$r("app.media.server_menu3"),title:"我要退换"},
    {url:$r("app.media.server_menu4"),title:"服务进度"},
    {url:$r("app.media.server_menu5"),title:"以旧换新"},
    {url:$r("app.media.server_menu6"),title:"维修价格"},
    {url:$r("app.media.server_menu7"),title:"我要贴膜"},
    {url:$r("app.media.server_menu8"),title:"全部服务"},
  ]

  /*本机列表*/
  selfList:MenuListItem[] = [
    {url:$r("app.media.server_self1"),title:"手机自检"},
    {url:$r("app.media.server_self2"),title:"电池换新"},
    {url:$r("app.media.server_self3"),title:"屏幕换新"},
    {url:$r("app.media.server_self4"),title:"以旧换新"}
  ]

  /*头部栏*/
  @Builder Header(){
    Row(){
      Row(){
        Image($r("app.media.message")).width(15).height(15).margin({right:10})
        Text("您好，在线客服为您服务").fontSize(15).fontColor("#b2b2b2")
      }
      .width("80%")
      .height(30)
      .padding({left:13,right:10})
      .backgroundColor(Color.White)
      .borderRadius(20)
      Image($r("app.media.message")).height(24).fillColor("#1b1b1b")
    }
    .width("100%")
    .height(this.avoidArea/1.4)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceAround)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40,left:10,right:10})
  }

  /*维修列表*/
  @Builder MenuList(){
    Grid(){
      ForEach(this.menuList,(item:MenuListItem,index:number)=>{
        GridItem(){
          Column(){
            Image(item.url).width(30).height(30).margin({bottom:10})
            Text(item.title).fontSize(14).fontColor("#171717")
          }.justifyContent(FlexAlign.Center)
          .height("100%")
          .width("100%")
        }.width("100%")
        .height("100%")
      },(item,index)=>`${index}`)

    }.columnsTemplate("1fr 1fr 1fr 1fr")
    .rowsTemplate("1fr 1fr")
    .width("100%")
    .height(160)
    .backgroundColor(Color.White)
    .borderRadius(15)
  }

  /*本机信息*/
  @Builder SelfInfo(){
    Column(){
      Row(){
        Text("我的设备")
          .fontSize(18)
          .fontColor("#1a1a1a")
          .fontWeight(600)
      }.padding({top:16,bottom:16})
      .justifyContent(FlexAlign.Start)
      .width("100%")
      Column(){
        Row(){
          Image($r("app.media.server_self")).height(100)
          Column(){
            Text("Xiaomi MIX 4").fontSize(16).fontWeight(600).fontColor("#1b1b1b").margin({bottom:10})
            Text("保修期: 立即识别后查看").fontSize(14).fontColor("#858585").margin({bottom:10})
            Text("当前设备").fontSize(12).fontColor("#858585").borderRadius(4).border({color:"#858585",width:1}).padding(2)
          }.alignItems(HorizontalAlign.Start)
          .margin({left:15})
        }.width("100%")

        Row(){
          ForEach(this.selfList,(item:MenuListItem,index:number)=>{
            Column(){
              Image(item.url).height(40).margin({bottom:10})
              Text(item.title).fontSize(12).fontColor("#1b1b1b")
            }
          },(item,index)=>`${index}}`)

        }.justifyContent(FlexAlign.SpaceAround)
        .width("100%")
        .height(100)
      }.width("100%")
      .height(230)
      .borderRadius(15)
      .backgroundColor(Color.White)
      .padding(20)

    }
  }

  /*服务优选*/
  @Builder PreferredComponent(){
    Column(){
      Row(){
        Text("服务优选")
          .fontSize(18)
          .fontColor("#1a1a1a")
          .fontWeight(600)
      }.padding({top:16,bottom:16})
      .justifyContent(FlexAlign.Start)
      .width("100%")

      Row(){
        List(){
          ListItem(){
            Row(){
              RelativeContainer(){
                Image($r("app.media.server_preferered"))
                  .width(180)
                  .height(90)
                  .objectFit(ImageFit.Cover)
                  .id("preferred_image")
                  .alignRules({
                    top: {anchor: "__container__", align: VerticalAlign.Bottom},
                    left: {anchor: "__container__", align: HorizontalAlign.Start}
                  })
                Column(){
                  Text("手机特惠屏优惠").fontSize(14).fontWeight(600).margin({bottom:10})
                  Text("屏幕维修150元起").fontSize(12).fontColor("#808080")
                }.id("preferred_content")
                .alignRules({
                  top: {anchor: "preferred_image", align: VerticalAlign.Top},
                  left: {anchor: "preferred_image", align: HorizontalAlign.Start}
                })
                .height("100%")
                .width(120)
                .justifyContent(FlexAlign.Center)
              }
            }.width("100%").height("100%")
          }
        }
      }.width("100%")
      .height(90)
    }
  }

  /*线下服务*/
  @Builder OfflineComponent(){
    Column(){
      Row(){
        Text("线下服务")
          .fontSize(18)
          .fontColor("#1a1a1a")
          .fontWeight(600)
        Text("查看更多").fontSize(14).fontColor("#a9a9a9")
      }.padding({top:16,bottom:16})
      .justifyContent(FlexAlign.SpaceBetween)
      .width("100%")
      Image($r("app.media.server_offline")).width("100%")
    }
  }


  build() {
    Column(){
      this.Header()

      /*列表*/
      List(){
        ListItem(){this.MenuList()}
        ListItem(){this.SelfInfo()}
        ListItem(){this.PreferredComponent()}
        ListItem(){this.OfflineComponent()}
      }.padding({left:10,right:10,top:10,bottom:60})


    }.width("100%")
    .height("100%")
    .backgroundColor("#f6f6f6")
  }
}