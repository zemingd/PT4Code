n = gets.to_i
wn = [gets.chomp]

(n-1).times do
  w = gets.chomp
  if wn.include?(w) or wn.last[-1] != w[0]
    puts 'No'
    exit
  end
  wn << w
end

puts 'Yes'