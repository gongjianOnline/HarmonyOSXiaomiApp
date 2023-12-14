import web_webview from '@ohos.web.webview';

@Entry
@Component
export default struct Home {
  @State message: string = 'Hello World'
  private swiperController: SwiperController = new SwiperController()
  avoidArea = globalThis.avoidArea;
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();
  webviewController2: web_webview.WebviewController = new web_webview.WebviewController();

  /*头部搜索栏*/
  @Builder Header(){
    Row(){
      Image($r("app.media.mi")).height(30)
      TextInput({
        placeholder:"红米K70",
      })
        .enterKeyType(EnterKeyType.Search)
        .placeholderFont({
          size:15
        })
        .caretColor(Color.White)
        .width("60%")
        .height(30)
        .padding({left:13,right:10})
        .backgroundColor("#b8b8b8")
      Image($r("app.media.code")).height(24).fillColor(Color.White)
      Image($r("app.media.message")).height(24).fillColor(Color.White)
    }
    .width("100%")
    .height(this.avoidArea/1.5)
    .zIndex(2)
    .justifyContent(FlexAlign.SpaceAround)
    .alignItems(VerticalAlign.Center)
    .padding({bottom:4,top:40,left:10,right:10})
  }

  /*轮播*/
  @Builder Swiper(){
    Swiper(this.swiperController){
      Image($r("app.media.banner"))
      Image($r("app.media.banner"))
      Image($r("app.media.banner"))
    }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
    .indicatorStyle({
      color:"#cccccc",
      selectedColor:Color.White
    })
  }

  /*品质保证*/
  @Builder Assure(){
    Row(){
      Row(){
        Image($r("app.media.yes")).width(15)
        Text("官方商城").fontSize(12).fontColor("#9e9e9e").padding({left:4})
      }
      Row(){
        Image($r("app.media.yes")).width(15)
        Text("正品保证").fontSize(12).fontColor("#9e9e9e").padding({left:4})
      }
      Row(){
        Image($r("app.media.yes")).width(15)
        Text("售后无忧").fontSize(12).fontColor("#9e9e9e").padding({left:4})
      }
    }
    .padding({top:12})
    .width("100%")
    .justifyContent(FlexAlign.SpaceAround)
  }

  /*商品分类*/
  @Builder Classify(){
    Swiper(this.swiperController){
      Grid(){
        GridItem(){
          Column(){
            Image($r("app.media.shangxin")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米上新").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.zhongchou")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米众筹").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.fabu")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米发布").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.fuli")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("新人福利").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.zhuanxiang")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("会员专享").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.chuandai")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("智能穿戴").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.diannao")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("电脑/平板").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.shouji")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("手机").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.dianshi")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("电视").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.bingxiang")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("空冰洗").fontSize(12).margin({top:6})
          }
        }
      }
        .width("100%")
        .rowsTemplate("1fr 1fr")
        .columnsTemplate("1fr 1fr 1fr 1fr 1fr")
        .padding({left:10,right:10,bottom:20})
      Grid(){
        GridItem(){
          Column(){
            Image($r("app.media.shangxin")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米上新").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.zhongchou")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米众筹").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.fabu")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("小米发布").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.fuli")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("新人福利").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.zhuanxiang")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("会员专享").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.chuandai")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("智能穿戴").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.diannao")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("电脑/平板").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.shouji")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("手机").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.dianshi")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("电视").fontSize(12).margin({top:6})
          }
        }
        GridItem(){
          Column(){
            Image($r("app.media.bingxiang")).width("80%").height(60).objectFit(ImageFit.Cover)
            Text("空冰洗").fontSize(12).margin({top:6})
          }
        }
      }
      .width("100%")
      .rowsTemplate("1fr 1fr")
      .columnsTemplate("1fr 1fr 1fr 1fr 1fr")
      .padding({left:10,right:10,bottom:20})
    }
    .height(220)
    .indicatorStyle({
      color:"#ededed",
      selectedColor:"#a6a6a6",
      bottom:0
    })
  }


  /*活动窗口*/
  @Builder Activity(){
    /*结合List和web组件使用的时候,web组件会影响List的上下滑动,解决方案是将 Column 组件高度嵌套到 web 中,并将高度降为0*/
    Row(){
      RelativeContainer(){
        Row(){
          Image($r("app.media.home_activityBg")).width("100%").height("100%").borderRadius(10)
        }
          .width("100%")
          .height(200)
          .id("activity_background")
          .padding({left:10,right:10})
          .alignRules({
            top: { anchor: '__container__', align: VerticalAlign.Top },
            left: { anchor: '__container__', align: HorizontalAlign.End },
          })
        /*顶部标题*/
        Column(){
          Text("手机尚新机")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Text("最高24期免息")
            .fontSize(12)
            .margin({top:4})
        }
          .width("40%")
          .height(60)
          .margin({left:10})
          .padding({left:10,top:10})
          .alignItems(HorizontalAlign.Start)
          .id("activity_title")
          .alignRules({
            top: { anchor: 'activity_background', align: VerticalAlign.Top },
            left: { anchor: 'activity_background', align: HorizontalAlign.Start },
          })

        /*左侧菜单栏*/
        Column(){
          Row(){
            Column(){
              Column(){
                Text("潮电风向标").fontSize(12).fontWeight(500).margin({bottom:4})
                Text("空调低至1699起").fontSize(10).fontColor("#81807e")
              }.alignItems(HorizontalAlign.Start)
              Text("进入会场>").fontSize(10).fontWeight(500)
            }.width("55%")
              .height("100%")
              .padding({left:6,top:8,bottom:10})
              .justifyContent(FlexAlign.SpaceBetween)
              .alignItems(HorizontalAlign.Start)
            Column(){
              Image($r("app.media.home_activityA")).objectFit(ImageFit.Cover)
            }.width("45%").height("100%").padding(10)
          }
          .width("100%")
          .height("45%")
          .backgroundColor("#fefefc")
          .borderRadius(10)

          Row(){
            Column(){
              Column(){
                Text("电视焕新季").fontSize(12).fontWeight(500).margin({bottom:4})
                Text("至高12期免息").fontSize(10).fontColor("#81807e")
              }.alignItems(HorizontalAlign.Start)
              Text("进入会场>").fontSize(10).fontWeight(500)
            }.width("45%")
            .height("100%")
            .padding({left:6,top:8,bottom:10})
            .justifyContent(FlexAlign.SpaceBetween)
            .alignItems(HorizontalAlign.Start)
            Column(){
              Image($r("app.media.home_activityB")).objectFit(ImageFit.Cover)
            }.width("55%").height("100%").padding(10)
          }
          .width("100%")
          .height("45%")
          .backgroundColor("#fefefc")
          .borderRadius(10)
        }.id("activity_List")
          .height("100%")
          .width("50%")
          .padding({right:18,top:4,bottom:4})
          .justifyContent(FlexAlign.SpaceAround)
          .alignRules({
            top: { anchor: 'activity_background', align: VerticalAlign.Top },
            left: { anchor: 'activity_background', align: HorizontalAlign.Center },
          })


      }
    }.width("100%").height(200).borderRadius(10)


  }

  /*新品窗口*/
  @Builder NewProduct(){
      // Web({src:$rawfile("home_activity.html"),controller:this.webviewController})
      //   .height(220)
      //   .width("100%")
      //   .padding({left:10,right:10})
      Column(){
        Row(){
          Text("人气手机").fontSize(16)
          Text("更多").fontSize(12).fontColor("#818181")
        }.justifyContent(FlexAlign.SpaceBetween).padding({left:10,right:10,top:10,bottom:10}).width("100%")

        Row(){
          RelativeContainer(){
            Image($r("app.media.home_NewProduct_bg"))
              .id("NewProductBg")
              .width("100%")
              .height("100%")
              .alignRules({
                top: { anchor: '__container__', align: VerticalAlign.Top },
                left: { anchor: '__container__', align: HorizontalAlign.End },
              })
              .borderRadius(10)

            Column(){
              Image($r("app.media.home_NewProduct_k70t")).width(100).margin({top:15})
              Row(){
                Text("3299元起").fontSize(14)
              }
              .width(90)
              .height(30)
              .borderRadius(30)
              .padding({top:5,bottom:5})
              .justifyContent(FlexAlign.Center)
              .margin({top:10})

              Image($r("app.media.home_NewProduct_k70")).width(110)

            }
            .id("NewProductA")
            .width("50%")
            .height("100%")
            .alignRules({
              top: { anchor: '__container__', align: VerticalAlign.Top },
              left: { anchor: '__container__', align: HorizontalAlign.Start },
            })

            Column(){
              Image($r("app.media.home_NewProduct_mi14t")).width(100).margin({top:15})
              Row(){
                Text("3999元起").fontSize(14)
              }
              .width(90)
              .height(30)
              .borderRadius(30)
              .padding({top:5,bottom:5})
              .justifyContent(FlexAlign.Center)
              .margin({top:10})

              Image($r("app.media.home_NewProduct_mi14")).width(110)
            }
            .id("NewProductB")
            .width("50%")
            .height("100%")
            .alignRules({
              top: { anchor: 'NewProductA', align: VerticalAlign.Top },
              left: { anchor: 'NewProductA', align: HorizontalAlign.End },
            })

            /*底部商品栏*/
            Row(){
              Grid(){
                GridItem(){
                  Column(){
                    Image($r("app.media.home_NewProduct_note13")).height(70)
                    Text("Note 13 Pro 系列").fontSize(12).margin({top:10,bottom:8})
                    Text("购机赠碎屏保").fontColor("#7b7c7e").fontSize(10)
                  }
                }
                GridItem(){
                  Column(){
                    Image($r("app.media.home_NewProduct_note12")).height(70)
                    Text("Note 12 Turbo").fontSize(12).margin({top:10,bottom:8})
                    Text("赠小米有线耳机").fontColor("#7b7c7e").fontSize(10)
                  }
                }
                GridItem(){
                  Column(){
                    Image($r("app.media.home_NewProduct_note13pro")).height(70)
                    Text("Redmi K70E").fontSize(12).margin({top:10,bottom:8})
                    Text("至高6期免息").fontColor("#7b7c7e").fontSize(10)
                  }
                }
              }
              .columnsTemplate("1fr 1fr 1fr")
              .rowsTemplate("1fr")
              .width("100%")
              .height(140)
            }
            .width("100%")
            .height(140)
            .id("NewProductA_list")
            .alignRules({
              top: { anchor: 'NewProductBg', align: VerticalAlign.Center },
              left: { anchor: 'NewProductBg', align: HorizontalAlign.Start },
            })
            .margin({top:20})

          }
        }
        .width("100%")
        .height(340)
      }.width("100%")
        .height(380)
        .padding({left:10,right:10})
  }




  build() {
    Column(){
      Stack({alignContent:Alignment.TopStart }){
        this.Header()
        List(){
          /*轮播*/
          ListItem(){this.Swiper()}
          /*保证*/
          ListItem(){this.Assure()}
          /*两行五列*/
          ListItem(){this.Classify()}
          /*活动窗口*/
          ListItem(){this.Activity()}
          /*新品窗口*/
          ListItem(){this.NewProduct()}
        }.zIndex(1)
      }
    }
    .height("100%")
    .width("100%")
    .backgroundColor("#ffffff")
  }
}