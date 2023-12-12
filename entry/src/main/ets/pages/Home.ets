import web_webview from '@ohos.web.webview';

@Entry
@Component
export default struct Home {
  @State message: string = 'Hello World'
  private swiperController: SwiperController = new SwiperController()
  avoidArea = globalThis.avoidArea;
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

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
    Web({src:$rawfile("home_activity.html"),controller:this.webviewController})
      .height(220)
      .width("100%")
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
        }.zIndex(1)


      }

    }
    .height("100%")
    .width("100%")
    .backgroundColor("#ffffff")
  }
}