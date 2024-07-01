a, b, c, d = gets.split.map(&:to_i)

b_cmod = b / c
b_dmod = b / d
b_cdmod = b / c.lcm(d)
bb = b_cmod + b_dmod - b_cdmod
# bt = b - b_cmod - b_dmod + b_cdmod

a_cmod = (a - 1) / c
a_dmod = (a - 1) / d
a_cdmod = (a - 1) / c.lcm(d)
aa = a_cmod + a_dmod - a_cdmod
# at = a - a_cmod - a_dmod + a_cdmod

# puts aa
# puts bb

# puts bt - at

puts b - a  + 1 - bb + aa

# puts b - a - bt + at