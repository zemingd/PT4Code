N = gets.to_i
a = []
a = gets.split.map(&:to_i)

hash = Hash.new

N.times do |i|
  if hash[a[i]].nil?
    hash[a[i]] = true
  elsif hash[a[i]]
    puts "NO"
    exit
  end
end
puts "YES"