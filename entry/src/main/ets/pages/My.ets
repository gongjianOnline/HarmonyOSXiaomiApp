@Entry
@Component
export default  struct My {

  /*轮播控制器*/
  swiperController: SwiperController = new SwiperController()

  avoidArea = globalThis.avoidArea;

  /*标题*/
  @Builder Header(){
    Row(){
      Row(){
        Text(){
          Span("会员码")
        }.fontSize(14).margin({right:4})
        Image($r("app.media.code")).width(20)
        Image($r("app.media.setting")).width(20).margin({left:20})
        Image($r("app.media.message")).width(20).margin({left:20})
      }.padding({right:10})
    }
    .width("100%")
    .height(this.avoidArea/1.4)
    .zIndex(2)
    .justifyContent(FlexAlign.End)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:10,top:40})
    .backgroundColor(Color.White)
  }

  /*用户信息*/
  @Builder InfoComponent(){
    Flex({alignItems:ItemAlign.Center}){
      Image($r("app.media.my_img")).width(80).borderRadius(100)
      Column(){
        Flex(){
          Text("龚箭").fontSize(18).fontColor("#333333").margin({bottom:10})
        }
        Flex(){
          Text(){
            Span("小米ID")
            Span("524333357")
          }.fontSize(12).backgroundColor("#efefef").padding({left:6,right:6,top:4,bottom:4}).borderRadius(10).margin({right:2})
          Text("勋章1枚").fontSize(12).backgroundColor("#efefef").padding({left:6,right:6,top:4,bottom:4}).borderRadius(10).margin({right:2})
          Text(){
            Span("成长值")
            Span("896")
          }.fontSize(12).backgroundColor("#efefef").padding({left:6,right:6,top:4,bottom:4}).borderRadius(10)
        }

      }.flexGrow(1)
      .padding({left:10})
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }.width("100%")
    .height(100)
  }

  /*用户额度*/
  @Builder userLimit(){
    Grid(){
      GridItem(){
        Column(){
          Text("40").fontSize(18).fontColor("#343434").fontWeight(600).margin({top:5})
          Text("米金").fontSize(14).fontColor("#989898")
        }.height("100%")
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }.width("100%")
      .height("100%")
      GridItem(){
        Column(){
          Text("13").fontSize(18).fontColor("#343434").fontWeight(600).margin({top:5})
          Text("优惠劵").fontSize(14).fontColor("#989898")
        }.height("100%")
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }.width("100%")
      .height("100%")
      GridItem(){
        Column(){
          Text("0").fontSize(18).fontColor("#343434").fontWeight(600).margin({top:5})
          Text("红包").fontSize(14).fontColor("#989898")
        }.height("100%")
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }.width("100%")
      .height("100%")
      GridItem(){
        Column(){
          Text(){
            Span("20")
            Span("万元").fontSize(12)
          }.fontSize(18).fontColor("#343434").fontWeight(600).margin({top:5})
          Text("最高额度").fontSize(14).fontColor("#989898")
        }.height("100%")
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }.width("100%")
      .height("100%")
      GridItem(){
        Column(){
          Image($r("app.media.wallet")).width(30)
          Text("钱包").fontSize(14).fontColor("#989898")
        }.height("100%")
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }.width("100%")
      .height("100%")
    }.columnsTemplate("1fr 1fr 1fr 1fr 1fr")
    .rowsTemplate("1fr")
    .width("100%")
    .height(50)
  }

  /*会员中心*/
  @Builder userMemberComponent(){
    Flex(){
      Column(){
        Text("小米FRIEND会员中心").fontColor("#512e2c").fontSize(16).margin({bottom:10})
        Flex(){
          Text("30天价保").fontSize(12).fontColor("#998677").margin({right:10})
          Text("F码优先购").fontSize(12).fontColor("#998677").margin({right:10})
          Text("尊享优惠券").fontSize(12).fontColor("#998677")
        }
      }.flexGrow(1)
      .height("100%")
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Start)
      .padding({left:20})
      Row(){
        Text("查看权益").fontSize(14).fontColor("#746a5e")
      }.width(100)
      .height("100%")
    }.width("100%")
    .height(80)
    .backgroundColor("#f4ecdf")
    .borderRadius(6)
    .margin({top:20})
  }

  /*积分模块*/
  @Builder integratorComponent(){
    Flex({justifyContent:FlexAlign.SpaceBetween}){
      Row(){
        Column(){
          Text("米金星球").margin({bottom:10}).fontColor("#363636")
          Text("31米金待领取").fontColor("#ed6b31").fontSize(12)
        }.width("60%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        Column(){
          Image($r("app.media.my_integratorA")).width(50)
        }.width("40%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
      }.width("48%").height("100%").borderRadius(10).backgroundColor("#fff")
      Row(){
        Column(){
          Text("米金商城").margin({bottom:10}).fontColor("#363636")
          Text("买前先兑劵").fontColor("#ed6b31").fontSize(12)
        }.width("60%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        Column(){
          Image($r("app.media.my_integratorB")).width(50)
        }.width("40%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
      }.width("48%").height("100%").borderRadius(10).backgroundColor("#fff")
    }.width("100%")
    .height(100)
    .margin({top:20})
  }

  /*商品记录及发货状态*/
  @Builder commodityComponent(){
    Column(){
      Row(){
        Row(){
          Text("收藏").fontSize(13).fontColor("#979797")
          Text("6").fontSize(13).fontColor("#000000").margin({left:4})
        }.width("33%").height(20).border({width:{right:1},color:"#969696"}).justifyContent(FlexAlign.Center)
        Row(){
          Text("足迹").fontSize(13).fontColor("#979797")
          Text("19 ").fontSize(13).fontColor("#000000").margin({left:4})
        }.width("33%").height(20).border({width:{right:1},color:"#969696"}).justifyContent(FlexAlign.Center)
        Row(){
          Text("关注").fontSize(13).fontColor("#979797")
          Text("0").fontSize(13).fontColor("#000000").margin({left:4})
        }.width("33%").height(20).justifyContent(FlexAlign.Center)
      }.margin({top:10})

      /*订单信息*/
      Grid(){
        GridItem(){
          Column(){
            Image($r("app.media.wallet")).width(30).margin({bottom:4,top:15})
            Text("待付款").fontSize(12).fontColor("#000000").margin({bottom:10})
          }.width("100%")
          .height("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }.width('100%')
        .height(80)
        GridItem(){
          Column(){
            Image($r("app.media.daishouhuo")).width(30).margin({bottom:4,top:15})
            Text("待收货").fontSize(12).fontColor("#000000").margin({bottom:10})
          }.width("100%")
          .height("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }.width('100%')
        .height(80)
        GridItem(){
          Column(){
            Image($r("app.media.pingjia")).width(30).margin({bottom:4,top:15})
            Text("待评价").fontSize(12).fontColor("#000000").margin({bottom:10})
          }.width("100%")
          .height("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }.width('100%')
        .height(80)
        GridItem(){
          Column(){
            Image($r("app.media.shouhou")).width(30).margin({bottom:4,top:15})
            Text("退换/售后").fontSize(12).fontColor("#000000").margin({bottom:10})
          }.width("100%")
          .height("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }.width('100%')
        .height(80)
        GridItem(){
          Column(){
            Image($r("app.media.dingdan")).width(30).margin({bottom:4,top:15})
            Text("全部订单").fontSize(12).fontColor("#000000").margin({bottom:10})
          }.width("100%")
          .height("100%")
          .justifyContent(FlexAlign.SpaceBetween)
        }.width('100%')
        .height(80)
      }.columnsTemplate("1fr 1fr 1fr 1fr 1fr")
      .rowsTemplate("1fr")
      .width("100%")
      .height("80")
      .margin({top:10})


    }.width("100%")
    .backgroundColor("#fff")
    .borderRadius(10)
    .margin({top:20})
    .padding({bottom:15})
  }

  /*服务模块*/
  @Builder ServerComponent(){
    Column(){
      Row(){
        Text("服务").fontSize(16).fontWeight(600).fontColor("#000000")
        Text("查看更多").fontSize(12).fontColor("#adadad")
      }.width("100%")
      .justifyContent(FlexAlign.SpaceBetween)

      Grid(){
        GridItem(){
          Column(){
            Image($r("app.media.server_menu1")).width(30).margin({bottom:10})
            Text("一键安装").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.server_menu3")).width(30).margin({bottom:10})
            Text("一键退款").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.server_menu2")).width(30).margin({bottom:10})
            Text("一键维修").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.server_menu4")).width(30).margin({bottom:10})
            Text("一键进度").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.my_integrtor3")).width(30).margin({bottom:10})
            Text("小米之家").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.my_integrtor2")).width(30).margin({bottom:10})
            Text("客服中心").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.server_menu5")).width(30).margin({bottom:10})
            Text("以旧换新").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
        GridItem(){
          Column(){
            Image($r("app.media.my_integrtor1")).width(30).margin({bottom:10})
            Text("保障权益").fontSize(14)
          }.justifyContent(FlexAlign.Center)
        }
      }.columnsTemplate("1fr 1fr 1fr 1fr")
      .rowsTemplate("1fr 1fr")

    }.width("100%")
    .height(200)
    .borderRadius(10)
    .backgroundColor("#fff")
    .margin({top:20})
    .padding({left:10,right:10,top:20,bottom:30})
  }

  /*轮播*/
  @Builder CarouselComponent(){
    Row(){
      Swiper(this.swiperController){
        Image($r("app.media.my_swiper"))
        Image($r("app.media.my_swiper"))
      }.loop(true)
      .autoPlay(true)
      .interval(3000)
      .indicatorStyle({
        color:"#cccccc",
        selectedColor:Color.White
      })
    }.width("100%")
    .height(100)
    .margin({top:20})
  }


  /*为你精选*/
  @Builder RecommendListTitle(){
    Row(){
      Text("为我精选").fontSize(16)
    }.padding({bottom:10,top:10})
  }
  @Builder RecommendList(){
    Row(){
      Column(){
        Image($r("app.media.home_RecommendA")).width("100%").borderRadius({topLeft:10,topRight:10})
        Text("8H释压舒弹纤维枕 抗菌对装").fontSize(14).fontWeight(600).margin({top:10,bottom:10}).padding({left:10,right:10})
        Text("8H释压舒弹纤维枕 抗菌对装").width("100%").fontSize(12).fontColor("#797979").padding({left:10,right:10}).maxLines(1).textOverflow({ overflow: TextOverflow.Ellipsis })
        Text(){
          Span("￥99").fontColor("#303030").fontSize(14).margin({right:10})
          Span("￥129").fontColor("#afafaf").fontSize(13).decoration({ type: TextDecorationType.LineThrough, color: "#afafaf" })
        }.padding({left:10,right:10,top:10})

      }.width("48%")
      .height("100%")
      .borderRadius(10)
      .alignItems(HorizontalAlign.Start)
      .backgroundColor("#fff")

      Column(){
        Image($r("app.media.home_RecommendA")).width("100%").borderRadius({topLeft:10,topRight:10})
        Text("8H释压舒弹纤维枕 抗菌对装").fontSize(14).fontWeight(600).margin({top:10,bottom:10}).padding({left:10,right:10})
        Text("8H释压舒弹纤维枕 抗菌对装").width("100%").fontSize(12).fontColor("#797979").padding({left:10,right:10}).maxLines(1).textOverflow({ overflow: TextOverflow.Ellipsis })
        Text(){
          Span("￥99").fontColor("#303030").fontSize(14).margin({right:10})
          Span("￥129").fontColor("#afafaf").fontSize(13).decoration({ type: TextDecorationType.LineThrough, color: "#afafaf" })
        }.padding({left:10,right:10,top:10})

      }.width("48%")
      .height("100%")
      .borderRadius(10)
      .alignItems(HorizontalAlign.Start)
      .backgroundColor("#fff")

    }.width("100%")
    .height(250)
    .padding({left:10,right:10})
    .margin({bottom:10})
    .justifyContent(FlexAlign.SpaceBetween)

  }



  build() {
    Column(){
      this.Header()

      List(){
        ListItem(){this.InfoComponent()}
        ListItem(){this.userLimit()}
        ListItem(){this.userMemberComponent()}
        ListItem(){this.integratorComponent()}
        ListItem(){this.commodityComponent()}
        ListItem(){this.ServerComponent()}
        ListItem(){this.CarouselComponent()}
        ListItem(){this.RecommendListTitle()}

        /*商品列表*/
        ListItem(){this.RecommendList()}
        ListItem(){this.RecommendList()}
        ListItem(){this.RecommendList()}
        ListItem(){this.RecommendList()}
        ListItem(){this.RecommendList()}


      }.padding({bottom:40})

    }.width("100%")
    .height("100%")
    .padding(10)
    .backgroundColor("#f9f9f9")
  }
}