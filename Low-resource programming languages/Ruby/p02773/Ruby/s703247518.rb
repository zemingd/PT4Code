n = gets.chomp.to_i
dict = {}
m = 1
n.times do
  k = gets.chomp
  if dict.has_key?(k)
    dict[k] += 1
    m = dict[k] if m < dict[k]
  else
    dict.merge!({k => 1})
  end
end
puts(dict.select{|key, val| val==m}.keys.sort)
