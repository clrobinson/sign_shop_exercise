def size_cost(square_footage)
  cents_per_square_foot = 1500
  return square_footage * cents_per_square_foot
end

def colour_cost(colour_count)
  discount_threshold = 2
  discount_cents_per_colour = 1000
  full_cents_per_colour = 1500
  if colour_count <= discount_threshold
    return colour_count * discount_cents_per_colour
  else
    return colour_count * full_cents_per_colour
  end
end

def tax(quote_in_cents)
  tax_percentage = 15
  return (quote_in_cents / 100) * tax_percentage
end

def format_dollar_string(quote_in_cents)
  string = (quote_in_cents / 100.0).to_s
  if string.index('.') == string.length - 2
    string += "0"
  end
  return "$" + string
end

def price_quote(square_footage, colour_count)
  quote_in_cents = 0
  quote_in_cents += size_cost(square_footage)
  quote_in_cents += colour_cost(colour_count)
  quote_in_cents += tax(quote_in_cents)
  return format_dollar_string(quote_in_cents)
end


# Test code

puts "1 square foot, 1 colour: " + price_quote(1, 1)
puts "2 square feet, 2 colours: " + price_quote(2, 2)
puts "3 square feet, 3 colours: " + price_quote(3, 3)
puts "4 square feet, 4 colours: " + price_quote(4, 4)