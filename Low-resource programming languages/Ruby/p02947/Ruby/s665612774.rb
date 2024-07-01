require 'set'

N = gets.chomp.to_i

s_c_hash = {}

u_set = Set.new
prev_size = 0

N.times do
  e = gets.chomp.split('').sort.join('')
  u_set << e
  if prev_size != u_set.size
    s_c_hash.merge!("#{e}": 1)
    prev_size += 1
  else
    s_c_hash[e.to_sym] += 1
  end
end

ret = 0
arr = s_c_hash.to_a.reject! { |_k, v| v == 1 }

if arr.nil?
  s_c_hash.to_a.each do |_k, v|
    next if v == 1

    ret += (v * (v - 1)) / 2
  end
else
  arr.each do |_k, v|
    next if v == 1

    ret += (v * (v - 1)) / 2
  end
end

print ret
