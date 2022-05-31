import 'package:al_hashmi_market/modles/item_cart_modle.dart';

class CartShopping{
  late List<Item> items;
  late double totalPriceOfCart;
  
  addItem(Item item){
    if(items.contains(item)){
      items[items.indexOf(item)].incQuan();
    }else{
      items.add(item);
    }
    
  }
  decItem(Item item){
    if(items.contains(item)){
      items[items.indexOf(item)].decQuan();
    }
  }
  removeItem(Item item){
    items.remove(item);
  }

  totle(){
    for (var element in items) { 
      totalPriceOfCart+=element.totalPriceOfItem;
    }
  }
  get totleOfInvoice=>totalPriceOfCart;
}