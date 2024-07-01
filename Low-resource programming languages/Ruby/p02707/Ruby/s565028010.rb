#ABC163C_management.rb
n = gets.to_i
ar = Array.new(n,0)
br = gets.split.map(&:to_i)
br.each do |a|
  ar[a-1] += 1
end
puts ar[0...n]
