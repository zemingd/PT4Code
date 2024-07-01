arr = []
gets.split(" ")[0].to_i.times do |i|
  arr.push gets.chomp.split("")
end
puts arr.sort!.join
