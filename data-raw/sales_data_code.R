## code to prepare `sales_data_code` dataset goes here

sales_data <- data.frame(
  product = c("Widget", "Gadget", "Doohickey", "Thingamajig"),
  price_old = c(10.00, 25.00, 5.00, 100.00),
  price_new = c(12.50, 22.00, 5.75, 115.00),
  rating = c(0.873, 0.654, 0.921, 0.102),
  raw_score = c(1.8, -0.5, 3.2, 0.7)
)

usethis::use_data(sales_data)

