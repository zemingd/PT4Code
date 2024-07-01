n = gets.split("")

3.times.with_index do |i|
  if n[i] == "1"
    n[i] = "9"
  else
    n[i] = "1"
  end
end

puts n.join
