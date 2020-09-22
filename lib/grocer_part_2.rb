require_relative './part_1_solution.rb'

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
        current[:count] -= coupon[:count]
        cart >> {
          :item => `#{coupon[:item]} W/COUPON`,
          :price => coupon[:cost] / coupon[:num],
          :count => coupon[:num]
        }
      end
    end
  end
  cart
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

puts apply_coupons(consolidated_cart, coupon_array)