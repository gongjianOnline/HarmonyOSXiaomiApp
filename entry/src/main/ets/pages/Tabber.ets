import Home  from "./Home"
import Category from "./Category"
import Server from "./Server"
import Car from "./Car"
import My from "./My"
@Entry
@Component
struct Tabber {

  @State tabsIndex:number = 0;
  private tabsController:TabsController = new TabsController();

  @Builder TabBarComponents(name:string,index:number,IconUrl:Resource,IconActivated:Resource){
    /*上图标下文字布局*/
    Column(){
      /*判断当前选中下标是否为当前菜单数,三目运算切换按钮颜色*/
      // Image(this.tabsIndex === index?selectedImg:normalImg).width(30)
      Image(this.tabsIndex === index?IconActivated:IconUrl)
        .width(18)
        .margin({bottom:4})
      Text(name)
        .fontColor(this.tabsIndex === index?'#fc6b1c' : '#454545')
        .fontSize(10)
    }
    .width('100%')
    .height(50)
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
        .tabBar(this.TabBarComponents("首页",0,$r('app.media.home'),$r("app.media.homeActivated")))
        TabContent(){
          /*当前tabbar要显示的页签内容*/
          Category()
        }
        .tabBar(this.TabBarComponents("分类",1,$r('app.media.category'),$r("app.media.categoryActivated")))
        TabContent(){
          /*当前tabbar要显示的页签内容*/
          Server()
        }
        .tabBar(this.TabBarComponents("服务",2,$r('app.media.server'),$r("app.media.serverActivated")))
        TabContent(){
          /*当前tabbar要显示的页签内容*/
          Car()
        }
        .tabBar(this.TabBarComponents("购物车",3,$r('app.media.car'),$r("app.media.carActivated")))
        TabContent(){
          /*当前tabbar要显示的页签内容*/
          My()
        }
        .tabBar(this.TabBarComponents("我的",4,$r('app.media.my'),$r("app.media.myActivated")))
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