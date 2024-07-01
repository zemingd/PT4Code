n,k = gets.chomp.split.map(&:to_i)
array = Array.new
hash = Hash.new
n.times do |i|
  a,b = gets.split.map(&:to_i)
  array << a if !array.include?(a)
  #puts "a=#{a} b=#{b}"
  hash[a] = hash[a].to_i + b
end

array.sort!
cnt = 0
array.size.times do |j|
  cnt += hash[array[j]]
  if cnt >= k then
    puts array[j]
   # p array
    #puts "hash #{hash[100000]}"
    exit
  end
end