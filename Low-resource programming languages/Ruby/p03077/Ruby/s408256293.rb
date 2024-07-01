n = gets.chomp.to_i
#a = gets.chomp.split().map(&:to_i)

a=[]
5.times do
  a.push gets.chomp.to_i
end

puts n / a.min + 5