n = gets.chomp.to_i
debt = 100000
n.times do
  interest = debt *0.05
  debt = ((debt + interest)/1000).ceil * 1000
end

puts debt

