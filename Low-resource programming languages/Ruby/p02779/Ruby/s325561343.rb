N=gets.chomp.to_i
array=gets.chomp.split(' ').map{|n|n.to_i}

hash = {}
bool = true

array.each do |item|
  if hash.has_key?(item) then
    bool = false
    break
  else
    hash[item] = true
  end
end

if bool then
  puts "YES"
else
  puts "NO"
end