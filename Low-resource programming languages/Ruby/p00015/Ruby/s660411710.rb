n = gets.to_i
1.upto(n) do
  a = gets.chomp
  b = gets.chomp
  if a.length > 80 || b.length > 80
    puts "overflow"
  else
    puts a.to_i + b.to_i
  end
end