# w1d5-Pet_Shop
Weekend homework. TDD, functions to implement pet shop management

##Changed data structure

Shop now has `:cash` at root, instead of `:total_cash` at `:admin`. This means that for example that `cash()` works with customers and shops.

##Added functions
```
cash(entity)
test_cash
pass_cash(giver, receiver, amount)
test_pass_cash__customer_to_shop
test_all_pets_by_breed__found_2
test_all_pets_by_breed__found_array
```
##Removed functions
```
total_cash(shop)
test_total_cash(shop)
cash(customer)
test_cash(shop)
add_or_remove_cash
test_add_or_remove_cash__add
test_add_or_remove_cash__remove
test_all_pets_by_breed__found
```
