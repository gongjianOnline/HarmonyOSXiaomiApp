export default class Storage{
  entryAbilityPreferences;
  constructor() {
    this.entryAbilityPreferences = globalThis.entryAbilityPreferences;
  }
  /*设置*/
  setItem(key:string,value:string|number|boolean){
    this.entryAbilityPreferences.has(key,(err, val)=>{
      if(err){console.error("set调用失败");return}
      if(val){console.error("key名已存在")}else{
        try{
          this.entryAbilityPreferences.put(key,value)
          this.entryAbilityPreferences.flush()
        }catch (err){
          console.error("put方法报错了")
        }
      }
    })
  }
  /*查找*/
  getItem(key:string,defaultVal:string|number|boolean):Promise<string|number|boolean>{
    return new Promise((resolve,reject)=>{
      this.entryAbilityPreferences.get(key,defaultVal,(err,val)=>{
        if(err){reject("报错了")}
        resolve(val as string|number|boolean);
      })
    })
  }
  /*删除*/
  delItem(key:string){
    this.entryAbilityPreferences.delete(key)
  }
}