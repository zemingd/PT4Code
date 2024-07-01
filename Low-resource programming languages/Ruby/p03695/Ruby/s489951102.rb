n = gets.to_i
a = gets.split.map(&:to_i)
a.map!{|a| a / 400}.sort!
hash = {}
min = 0
a.each do |a|
  if a < 8
    if hash[a] == nil then
      hash[a] = 1
    else
      hash[a] = hash[a] + 1
    end
    min = min + 1
  end
end

if min == n
  puts hash.size.to_s + ' ' + hash.size.to_s
else
  puts hash.size.to_s + ' ' + hash.size + n - min
end