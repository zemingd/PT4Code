n,k = gets.chomp.split.map(&:to_i)
array = Array.new
hash = Hash.new
n.times do |i|
  a,b = gets.split.map(&:to_i)
  array << a
  #puts "a=#{a} b=#{b}"
  hash[a] = hash[a].to_i + b
end

array.sort!
cnt = 0
array.size.times do |j|
  cnt += hash[array[j]]
  if cnt >= k - 1 then
    puts array[j]
    #puts "hash #{hash[100000]}"
    exit
  end
end