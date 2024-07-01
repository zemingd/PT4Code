n = gets.chomp.to_i

ret = 0
10.times do |a|
  ["7", "5", "3"].repeated_permutation(a) do |x|
    if x.include?("7") && x.include?("5") && x.include?("3")
      b = x.join("").to_i
      if b <= n
        ret += 1
      end
    end
  end
end

puts ret