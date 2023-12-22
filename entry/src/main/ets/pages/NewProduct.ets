import router from '@ohos.router';
import HeaderComponent from '../component/HeaderComponent';
@Entry
@Component
struct NewProduct {

  avoidArea = globalThis.avoidArea;
  private swiperController: SwiperController = new SwiperController()

  /*滚动状态*/
  private listScroller: Scroller = new Scroller();
  @State scrollerTop:string = "true";

  /*轮播*/
  @Builder Swiper(){
    Swiper(this.swiperController){
      Image($r("app.media.NewProduct_banner"))
      Image($r("app.media.NewProduct_banner"))
      Image($r("app.media.NewProduct_banner"))
    }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
    .indicatorStyle({
      color:"#cccccc",
      selectedColor:Color.White
    })
  }

  /*人气新品*/
  @Builder popularityHeader(){
    Row(){
      Text("人气新品").fontSize(18)
      Text("跟着买,就对了").fontColor("#5a5a5a").fontSize(12).margin({left:10})
    }.padding({left:10,right:10,top:10,bottom:20})
  }
  @Builder popularityItem(){
    Row(){
      Row(){
        Image($r("app.media.NewProduct_A")).height("100%")
      }.width("30%").height("100%")
      Column(){
        Column(){
          Text("米家智能宠物喂食器2").fontSize(16).fontColor("#343434")
          Text("新品看点: 5L智能大粮仓 科学喂养每一餐").fontSize(14).fontColor("#8c8c8c").margin({top:5,bottom:10})
        }.alignItems(HorizontalAlign.Start).width("100%")
        Row(){
          Text("七天新品").fontColor("#363636")
            .fontSize(10)
            .border({color:"#363636",width:0.5})
            .padding({left:10,right:10,top:4,bottom:4})
            .borderRadius(10)
        }.justifyContent(FlexAlign.Start).width("100%")
        Row(){
          Text(){
            Span("￥").fontSize(14).fontColor("#343434")
            Span("399").fontSize(16).fontColor("#343434").fontWeight(600 )
          }
          Text("去查看").padding({left:10,right:10,top:4,bottom:4}).border({color:"#ea6046",width:1}).fontColor("#ea6046").borderRadius(20)
        }.justifyContent(FlexAlign.SpaceBetween).width("100%").margin({top:12})

      }.width("70%")
      .height("100%")
    }.width("100%")
    .height(150)
    .backgroundColor("#fff")
    .borderRadius(10)
    .padding(10)
  }


  build() {
    Column(){
      Stack({alignContent:Alignment.TopStart }){
        HeaderComponent({
          titleName:"小米上新",
          scrollerTop:$scrollerTop,
          avoidArea:(this.avoidArea/1.4)
        })
        List(){
          ListItem(){this.Swiper()}
          ListItem(){this.popularityHeader()}

          ForEach([1,2,3,4,5,6],(item,index)=>{
            ListItem(){this.popularityItem()}.padding({left:10,right:10,top:5,bottom:5})
          },index=>index)


        }.width("100%")
        .height("100%")
        .backgroundColor("#f2f2f2")
        .onScrollIndex((firstIndex: number, lastIndex: number)=>{
          if(firstIndex<1){
            this.scrollerTop = "true"
          }else{
            this.scrollerTop = "false"
          }
        })
      }
    }.width("100%")
    .height("100%")
  }
}