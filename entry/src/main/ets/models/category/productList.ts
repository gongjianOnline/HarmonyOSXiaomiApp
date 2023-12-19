/*商品类型约束*/
export interface ProductItem{
  tag:string,
  data:ProductItemData[]
}


export interface ProductItemData{
  subTag:string,
  subData:ProductItemSubData[]
}

export interface ProductItemSubData {
  title:string,
  price:number,
  tage:Boolean,
}

