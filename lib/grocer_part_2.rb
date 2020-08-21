require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  product_final_array = []
  applied_coupons = []
  coupons.each { |k, v| 
    cart.each { |key, value|
      if value[:item] == v[:item]
        if value[:count] > v[:num]
          value[:count] -= v[:num]
          applied_coupons << {:item => "#{value[:item]} W/COUPON", :price => v[:cost]/v[:num], :clearance => value[:clearance], :count => v[:num]}
        else
          puts "#{value[:item]} is not eligible for discount"
        end
      end
    }
  }
  
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
