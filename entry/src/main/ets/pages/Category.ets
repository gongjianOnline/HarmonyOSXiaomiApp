
import hilog from '@ohos.hilog';
import util from '@ohos.util';
import {ProductItem,ProductItemData,ProductItemSubData} from "../models/category/productList"

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

  /*商品数据*/
  productList:Array<ProductItem> = [
    {
      tag:"Xiaomi手机",
      key: util.generateRandomUUID(true),
      data:[
        {
          subTag:"Xiaomi MIX 系列",
          key: util.generateRandomUUID(true),
          subData:[
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi MIX Fold 3",
              price:8999,
              tage:true
            }
          ]
        },
        {
          key: util.generateRandomUUID(true),
          subTag:"Xiaomi 数字系列",
          subData:[
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi14 Pro",
              price:4999,
              tage:false
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi14",
              price:3999,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi 13 Ultra",
              price:5999,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi 13 Pro",
              price:5999,
              tage:false
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi 13 Pro",
              price:5999,
              tage:false
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi 13 Pro",
              price:5999,
              tage:false
            },
            {
              key: util.generateRandomUUID(true),
              title:"Xiaomi 13 Pro",
              price:5999,
              tage:false
            },
          ]
        },
      ]
    },
    {
      tag:"Redmi手机",
      key: util.generateRandomUUID(true),
      data:[
        {
          key: util.generateRandomUUID(true),
          subTag:"K系列",
          subData:[
            {
              key: util.generateRandomUUID(true),
              title:"Redmi K70 Pro",
              price:3299,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi K70E",
              price:2799,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi K60 至尊版",
              price:2799,
              tage:true
            }
          ]
        },
        {
          subTag:"Note系列",
          key: util.generateRandomUUID(true),
          subData:[
            {
              key: util.generateRandomUUID(true),
              title:"Redmi Note 13 Pro",
              price:1399,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi Note 13 Pro+",
              price:1899,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi Note 13 5G",
              price:1099,
              tage:true
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi Note 12T Pro",
              price:1399,
              tage:false
            },
            {
              key: util.generateRandomUUID(true),
              title:"Redmi Note 12 Turbo",
              price:1599,
              tage:false
            }
          ]
        },
      ]
    }
  ]
  /*延迟滑动计数*/
  private listScroller: Scroller = new Scroller();



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

  /*菜单列表*/
  @Builder MenuComponent(){
    Column(){
      Text("推荐").padding({top:10,left:10}).fontColor("#626262").fontSize(14)
      List(){
        ForEach(this.menuList,(item,index)=>{
          ListItem(){
            Row(){
              Row(){}.width(4).height(20).margin({right:8}).backgroundColor(this.menuIndex == index?"#fb6c04":"rgba(255,255,255,0)")
              Text(item).fontSize(14).fontWeight(this.menuIndex == index?500:400)
            }.width("100%").justifyContent(FlexAlign.Start)
          }.height(40).width("100%")
          .onClick(()=>{
            this.menuIndex = index;
            this.listScroller.scrollToIndex(0)
          })
        },(item,index)=>`${index}`)

      }.padding({top:10})
    }.width("30%")
    .height("100%")
    .alignItems(HorizontalAlign.Start)
  }

  /*商品列表标题组设置*/
  @Builder CCHeadTitle(text:string){
    Text(text)
      .fontSize(16)
      .fontWeight(600)
      .fontColor("#333333")
      .backgroundColor(Color.White)
      .padding({bottom:10,top:10})
      .width("100%")
  }

  /*商品列表*/
  @Builder commodityComponent(){
    Column(){
      List({scroller:this.listScroller}){
        ListItem(){
          Image($r("app.media.caregory_banner")).width("100%")
        }.margin({bottom:15})
        ForEach(this.productList[this.menuIndex <= 1?this.menuIndex:1].data,(item:ProductItemData,index:number)=>{
          ListItemGroup({header:this.CCHeadTitle(item.subTag)}){
            ForEach(item.subData,(childItem:ProductItemSubData,childIndex:number)=>{
                ListItem(){
                  Row(){
                    Image($r("app.media.caregory_productA")).width(70)
                    Column(){
                      Text(childItem.title).fontSize(14).margin({bottom:10})
                      Row(){
                        Text(){
                          Span("￥").fontSize(12)
                          Span(`${childItem.price}`).fontSize(16).fontWeight(600)
                          Span("起").fontSize(12).padding({left:4})
                        }
                        Text("赠")
                          .fontColor("#b89d80")
                          .border({color:"#b89d80",width:1})
                          .fontSize(14)
                          .padding(2)
                          .borderRadius(4)
                          .margin({left:6})
                          .opacity(childItem.tage?0:1)
                      }
                    }.width("100%")
                    .height(80)
                    .padding({left:8,right:10,top:10,bottom:10})
                    .alignItems(HorizontalAlign.Start)
                    .justifyContent(FlexAlign.Center)
                    .margin({top:10})

                  }.padding(4)
                  .backgroundColor("#f8f8f8")
                }
            },(childItem)=>childItem.key)
          }.margin({top:10,bottom:10})
        },(item)=>item.key)

      }.margin({bottom:80})
      .sticky(StickyStyle.Header)
      .onReachEnd(()=>{
        hilog.info(10,"myLog","到底了")
      })
    }.width("70%")
    .height("100%")
  }

  build() {
    Column(){
      this.Header()
      /*商品菜单(左右)*/
      Row(){
        this.MenuComponent()
        this.commodityComponent()
      }
    }.width("100%")
    .height("100%")
  }


}