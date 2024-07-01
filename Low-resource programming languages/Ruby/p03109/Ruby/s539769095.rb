s = gets().chomp

y, m, d = s.split('/').map{|x| x.to_i}

is_heisei = true
if y > 2019
  is_heisei = false
elsif y == 2019 && m > 4
  is_heisei = false
end

puts is_heisei ? 'Heisei' : 'TBD'
