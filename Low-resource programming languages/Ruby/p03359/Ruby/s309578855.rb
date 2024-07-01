def main()
  a,b = gets.chomp.split(' ').map(&:to_i)
  ans = 0
  for i in 1..a do
    for j in 1..31 do
      break if (i == a) and (j > b)
      ans = ans + 1 if i == j
    end
  end
  puts ans
end

main()