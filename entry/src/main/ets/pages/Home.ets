@Entry
@Component
export default struct Home {
  @State message: string = 'Hello World'

  build() {
    Column(){
      Text(this.message)
    }
    .height("100%")
    .width("100%")
    .backgroundColor("#f3f3f3")
  }
}