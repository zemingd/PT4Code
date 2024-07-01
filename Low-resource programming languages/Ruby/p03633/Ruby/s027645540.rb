def main()
  n = gets.chomp.to_i
  x = []
  for i in 0..n-1 do
     x << gets.chomp.to_i
  end
  puts x.inject(:lcm)
end

main()