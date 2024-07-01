def main()
  a,b,c,d = gets.chomp.split(' ').map(&:to_i)
  ans = "No"
  ans = "Yes" if (((a-b).abs <= d) and ((b-c).abs <= d)) or ((a-c) <= d)
  puts ans
end

main()