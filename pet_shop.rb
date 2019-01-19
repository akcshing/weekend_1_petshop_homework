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
