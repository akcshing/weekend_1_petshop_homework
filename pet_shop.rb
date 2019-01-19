def pet_shop_name(pet_shop)
  shop_name = pet_shop[:name]
  return shop_name
end

def total_cash(pet_shop)
  total_cash = pet_shop[:admin][:total_cash]
  return total_cash
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pets_sold)
  pets_sold = pets_sold[:admin][:pets_sold]
  return pets_sold
end

def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end

def stock_count(pet_shop)
  pet_count = pet_shop[:pets].count
  return pet_count
end

def pets_by_breed(pet_shop, breed)  # error caused by variable typo - fixed
  pets_of_breed = []
  for pet in pet_shop[:pets]
    pets_of_breed << pet if pet[:breed] == breed
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, pet_name)  # error caused by returning pet name instead of pet - fixed
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets ]
    pet_shop[:pets].delete(pet) if pet[:name] == pet_name   # for item in array, if name matches, delete item
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  pet_count = customer[:pets].count
  return pet_count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(pet_shop, pet, customer)  # pet is == result of find_pet_by_name function, which is pet hash or nil.

  if pet != nil && customer_can_afford_pet(customer, pet) == true # unnecessary to include find pet function as it is already invoked within the test.
    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1) # if only selling one pet at a time
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(pet_shop, pet[:price])
  end
end
