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

def increase_pets_sold(pets_sold_total, pets_sold)
  pets_sold_total[:admin][:pets_sold] += pets_sold
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
end
