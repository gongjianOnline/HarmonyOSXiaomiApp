import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';
import dataPreferences from '@ohos.data.preferences';

export default class EntryAbility extends UIAbility {
  onCreate(want, launchParam) {
    /*设置状态栏透明*/
    let promise = window.getLastWindow(this.context);
    promise.then((data)=>{
      let windowClass = data;
      // 隐藏顶部状态栏背景
      windowClass.setWindowLayoutFullScreen(true);
    })

    /*首选项数据存储*/
    try{
      dataPreferences.getPreferences(this.context,"myStore",(err,preferences)=>{
        if(err){console.error("报错了");return}
        /*使用 globalThis 方式可以让全局应用公用该属性*/
        globalThis.entryAbilityPreferences = preferences;
      })
    }catch (error){
      console.error("报错了")
    }

    window.getLastWindow(this.context, (err, data) => {
      let type = window.AvoidAreaType.TYPE_SYSTEM;
      let avoidArea = data.getWindowAvoidArea(type);
      console.log("-------------")
      console.log(JSON.stringify(avoidArea))
      globalThis.avoidArea = avoidArea.topRect.height;
    });
  }

  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent('pages/Tabber', (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground() {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground() {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
