import Home  from "./Home"
@Entry
@Component
struct Tabber {

  @State tabsIndex:number = 0;
  private tabsController:TabsController = new TabsController();

  @Builder TabBarComponents(name:string,index:number,selectedImg:string,normalImg:string){
    /*上图标下文字布局*/
    Column(){
      /*判断当前选中下标是否为当前菜单数,三目运算切换按钮颜色*/
      Image(this.tabsIndex === index?selectedImg:normalImg).width(30)
      Text(name)
        .fontColor(this.tabsIndex === index?'#fc6b1c' : '#454545')
        .fontSize(12)
    }
    .width('100%')
    .height(60)
    .justifyContent(FlexAlign.Center)
    .backgroundColor("#ffffff")
    .border({
      width:{top:1},
      color:{top:"#dcdcdc"},
      style:{top:BorderStyle.Solid}
    })
    .onClick(()=>{
      /*将当前点击按钮状态同步到选中索引中,并通知 tabsController 控制器切换页面*/
      this.tabsIndex = index;
      this.tabsController.changeIndex(index)
    })
  }


  build() {
    Column(){
      Tabs({barPosition:BarPosition.End,controller:this.tabsController}){
        TabContent(){
          /*当前tabbar要显示的页签内容*/
          Home()
        }
        .tabBar(this.TabBarComponents("首页",0,"https://z1.ax1x.com/2023/11/29/piD6doV.png","https://z1.ax1x.com/2023/11/29/piD6tLn.png"))
      }
      .barWidth('100%')
      .barHeight(60)
      .onChange((index:number)=>{
        /*左右滑动可以切换页签*/
        this.tabsIndex = index
      })
    }
  }


}