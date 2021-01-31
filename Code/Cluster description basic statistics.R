#Statistics for stores segmentation clusters
library(data.table)
library(readr)

stores <- read_csv("C:/Users/banva/Desktop/stores_data_centroid.csv")
View(stores)

stores =as.data.table(stores)
class(stores)

#Numbe of clusters
unique(stores[,'centroids']) #3 centroids


discount_rate, discount_freq, total_Sales, product_types, weekend_freq, cluster_size

Stores_clusters = stores[ , .(Discount_Rate = mean(discount_rate), Total_sales = mean(revenue), 
               Product_types = mean(product_types), Weekend_freq = mean(weekend_freq), cluster_size =.N) ,by=centroids]

#Statistics for customers segmentation clusters

library(readr)
customers <- read_csv("C:/Users/banva/Desktop/customers_centroid.csv")
View(customers)

customers =as.data.table(customers)
class(customers)

#Numbe of clusters
unique(customers[,'centroids']) #3 centroids


#discount_rate, discount_freq, total_spending, product_types, total_freq, cluster_size

customers_clusters = customers[ , .(Discount_Rate = mean(discount_rate), Total_sales = mean(total_spending), 
                              Product_types = mean(product_types), Weekend_freq = mean(total_freq), cluster_size =.N) ,by=centroids]


#Statistics for product category segmentation clusters

library(readr)
product_cat <- read_csv("C:/Users/banva/Desktop/productcategory_data_centroid.csv")
View(product_cat)

product_cat =as.data.table(product_cat)
class(product_cat)

#Numbe of clusters
unique(product_cat[,'centroids']) #3 centroids



product_cat_clusters = product_cat[ , .(Quantity = mean(gvol), Total_sales = mean(grev), 
                                    Profit = mean(gprofit), No_of_transactions = mean(gtran),No_of_customers= mean(gcustomer) , Promotion_Frequency = mean(gfreq) ,cluster_size =.N) ,by=centroids]
