@Entry
@Component
export default struct Home {
  @State message: string = 'Hello World'
  private swiperController: SwiperController = new SwiperController()
  avoidArea = globalThis.avoidArea;
  build() {
    Column(){
      Stack({alignContent:Alignment.TopStart }){
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
            .height(37)
            .padding({left:13,right:10})
            .backgroundColor("#b8b8b8")
          Image($r("app.media.code")).height(24).fillColor(Color.White)
          Image($r("app.media.message")).height(24).fillColor(Color.White)
        }
        .width("100%")
        .height(this.avoidArea/1.5)
        .zIndex(2)
        .justifyContent(FlexAlign.SpaceAround)
        .alignItems(VerticalAlign.Bottom)
        .padding({bottom:4})

        List(){
          ListItem(){
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

        }.zIndex(1)
      }

    }
    .height("100%")
    .width("100%")
    .backgroundColor("#f3f3f3")
  }
}