def calc_comb(m)
#  if m < 2
#    return 0
#  elsif m == 2 
#    return 1
#  else
    return m * (m - 1) / 2
#  end
end

n = gets.strip.to_i
a = gets.strip.split(' ')

hash = a.group_by(&:itself).map{|key, value|[key, value.count]}.to_h

comb = Hash.new
sum  = 0
hash.each do |k,v|
  comb_res = calc_comb(v)
  comb[k] = comb_res
  sum = sum + comb_res
end

(1..n).each do |i|
  value = comb[a[i-1]]
  new_value = calc_comb(hash[a[i-1]] - 1)
  puts sum - (value - new_value)
end
