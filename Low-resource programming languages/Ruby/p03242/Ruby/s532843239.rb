n=gets.chomp
3.times do |i|
  if n[i] == "1"
    n[i] = "9"
  elsif n[i] == "9"
    n[i] = "1"
  end
end
puts n.to_i