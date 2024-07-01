s = gets.chomp
t = gets.chomp

hash_t = {}
(0..t.length-1).each do |i|
  hash_t[t[i]] ||= [] 
  hash_t[t[i]] << i
end

hash_t.each do |k, v|
  next if v.length == 1
  if v.map {|i| s[i] }.uniq.length > 1
    puts "No"
    exit
  end
end

puts "Yes"
