require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon|
    
    cart.each do |current|
      
      if current[:item] == coupon[:item] && coupon[:count] >= current[:count]
        
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
