/*商品类型约束*/
export interface ProductItem{
  tag:string,
  key:string,
  data:ProductItemData[]
}


export interface ProductItemData{
  subTag:string,
  key:string,
  subData:ProductItemSubData[]
}

export interface ProductItemSubData {
  key:string,
  title:string,
  price:number,
  tage:Boolean,
}

