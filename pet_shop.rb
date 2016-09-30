require ('pry-byebug')

def pet_shop_name(shop)
	return shop[:name]
end

def total_cash(shop)
	return shop[:admin][:total_cash]
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







def pets_by_breed(shop, breed_query)
	
	matching_pets = []
	for pet in shop[:pets]
		matching_pets << pet if breed_query == pet[:breed]
	end
	return matching_pets

end


