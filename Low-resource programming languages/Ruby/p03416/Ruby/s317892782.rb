a, b = gets.split.map(&:to_s)
cont = 0
[*a..b].each do |n|
  if n[0] == n[4] && n[1] == n[3]
    cont += 1
  end
end
puts cont