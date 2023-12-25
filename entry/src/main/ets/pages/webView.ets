import router from '@ohos.router'
import web_webview from '@ohos.web.webview';
import HeaderComponent from "../component/HeaderComponent"
@Entry
@Component
struct WebView {

  /*路由參數*/
  @State webType:string = router.getParams()?.["webType"]
  @State url:string = router.getParams()?.["url"]

  webviewController: web_webview.WebviewController = new web_webview.WebviewController();

  /*黏贴布局*/
  avoidArea = globalThis.avoidArea;
  /*相应滚动*/
  @State scrollerTop:string = "true";

  build() {
    Column(){
      Stack({alignContent:Alignment.TopStart }){
        HeaderComponent({
          titleName:"",
          avoidArea:(this.avoidArea / 1.4),
          scrollerTop:$scrollerTop
        })
        Web({src:$rawfile(`${this.url}.html`),controller:this.webviewController})
      }

    }.height("100%")
    .width("100%")
  }
}