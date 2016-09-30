require ('pry-byebug')

def pet_shop_name(shop)
	return shop[:name]
end

def total_cash(shop)
	return shop[:admin][:total_cash]
end

def cash(customer)
	return customer[:cash]
end

def add_or_remove_cash(shop, transaction)
	shop[:admin][:total_cash] += transaction
end

def pets_sold(shop)
	return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sales_to_record)
	shop[:admin][:pets_sold] += sales_to_record
end

def stock_count(shop)
	return shop[:pets].count
end

def find_pet_by_name(shop, name)

	for pet in shop[:pets]
		return pet if pet[:name] == name
	end
	return nil
end


def pets_by_breed(shop, breed_query)
	
	matching_pets = []
	for pet in shop[:pets]
		matching_pets << pet if breed_query == pet[:breed]
	end
	return matching_pets

end

def remove_pet_by_name(shop, name)
	#binding.pry
	for pet in shop[:pets]
		if pet[:name].downcase == name.downcase
			shop[:pets].delete(pet) 
			return
		end				
	end
	return nil

end


def add_pet_to_stock(shop, pet)
	shop[:pets] << pet
end

def customer_pet_count(customer)
	customer[:pets].count
end

def add_pet_to_customer(customer, pet)
	#What about removing from store?
	customer[:pets] << pet
end

def customer_can_afford_pet?(customer, pet)
	if customer[:cash] >= pet[:price]
		return true
	else 
		return false
	end
end

def debit_or_credit_customer(customer, amount)
	customer[:cash] += amount
end


def sell_pet_to_customer(shop, pet, customer)
	#binding.pry

	return if pet == nil

	if customer_can_afford_pet?(customer, pet)
		shop[:pets].delete(pet)
		add_pet_to_customer(customer, pet)
		increase_pets_sold(shop, 1)
		debit_or_credit_customer(customer, -1 * pet[:price])
		add_or_remove_cash(shop, pet[:price])
	end
	#binding.pry
end






















