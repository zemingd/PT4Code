n = gets.chomp.to_i

ans = 0
3.upto(9) do |i|
  ['7', '5', '3'].repeated_permutation(i) do |a|
    next if a.join('').to_i > n
    if a.include?('7') && a.include?('5') && a.include?('3')
      ans += 1
    end
  end
end
p ans
