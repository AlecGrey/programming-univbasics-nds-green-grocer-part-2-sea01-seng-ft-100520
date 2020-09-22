require_relative './part_1_solution.rb'
require 'pry'

consolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
  {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
]
coupon_array = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00}
]

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    cart.each do |current|
      if current[:item] == coupon[:item] && current[:count] >= coupon[:num]
        current[:count] -= coupon[:num]
        cart << {
          :item => "#{coupon[:item]} W/COUPON",
          :price => coupon[:cost] / coupon[:num],
          :clearance => current[:clearance],
          :count => coupon[:num]
        }
      end
    end
  end
  cart
end

def apply_clearance(cart)
  cart.each do |current|
    if current[:clearance]
      current[:price] *= 0.8
      current[:price] = current[:price].round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  new_cart = consolidate_cart(cart)
  new_cart_with_coupons = apply_coupons(new_cart, coupons)
  new_cart_with_discounts = apply_clearance(new_cart_with_coupons)
  
  grand_total = new_cart_with_discounts.reduce(0.0) do |current|
    grand_total += (current[:price] * current[:count])
  
end

puts apply_clearance(consolidated_cart)