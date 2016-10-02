# w1d5-Pet_Shop
Weekend homework. TDD, functions to implement pet shop management

#Changed data structure

Shop now has `:cash` at root, instead of `:total_cash` at `[:admin]`. This means that `cash()` works with customers and shops.

#Added functions
```
cash(entity)
debit_or_credit_customer(customer, amount)
```
#Removed tests
```
total_cash(shop)
cash(customer)
```
#Changed tests

`test_all_pets_by_breed__found`

Becomes:
```
test_all_pets_by_breed__found_2
test_all_pets_by_breed__found_array
```
#Added tests

```
test_cash
test_debit_or_credit_customer__debit
test_debit_or_credit_customer__credit
```
