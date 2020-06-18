require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)

counter = 0 

while counter < coupons.length
  new_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
  coupon_item_name = "#{coupons[counter][:item]} W/COUPON"
  new_item_couponed = find_item_by_name_in_collection(new_item_couponed, cart)
  if new_item && new_item[:count] >= coupons[counter][:num]
    if new_item_couponed
      new_item_couponed[:count] += coupons[counter][:num]
      new_item[:count] -= coupons[counter][:num]
    else
      new_item_couponed = {
        :item => coupon_item_name,
        :price => coupons[counter][:cost] / coupons[counter][:num],
        :count => coupons[counter][:num],
        :clearance => new_item[:clearance]
      }
      cart << new_item_couponed
      new_item[:count] -= coupons[counter][:num]
      end
    end
    counter += 1 
  end
  cart
end

def apply_clearance(cart)

counter = 0

while counter < cart.length
  if cart[counter][:clearance]
    cart[counter][:price] = (cart[counter][:price] - (cart[counter][:price] * .2))
  end
    counter += 1 
  end
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
