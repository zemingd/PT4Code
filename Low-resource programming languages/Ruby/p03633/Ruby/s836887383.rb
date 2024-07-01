class Array
def lcm
  self.inject(:lcm)
end
end

n = gets.chomp.to_i
clocks = []
n.times do
  clocks << gets.chomp.to_i
end

puts clocks.lcm