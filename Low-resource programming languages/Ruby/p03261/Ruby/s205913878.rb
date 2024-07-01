a =gets.chomp.to_i

arr = []
a.times do 
 arr << gets.chomp
end

unless arr.length == arr.uniq.length
  puts "No"
  exit 0
end

before = ""
arr.each do |s|
  if before == ""
    before = s
    next
  end
  unless before[-1] == s[0]
    puts "No"
    exit 0
  end
  before = s
end

puts "Yes"
