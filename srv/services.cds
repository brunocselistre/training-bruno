using { training.products as products} from '../db/schema/Products';
using { training.salesorder as salesorder} from '../db/schema/Salesorders';
using { training.stores as stores} from '../db/schema/Stores';
using { training.productViews } from '../db/Views/ProductsViews';


service MyServices {
    entity Products as projection on products.TBL_PRODUCTS;
    entity ProductType as projection on products.TBL_PRODUCT_TYPE;
    entity SalesOrder as projection on salesorder.TBL_SALES_ORDER;
    entity Stores as projection on stores.TBL_STORES;
    entity ProductWithType as projection on productViews.ProductWithTypeView;

    action helllo(ID:Integer) returns String;
    action teste(ID:Integer) returns String;

}
