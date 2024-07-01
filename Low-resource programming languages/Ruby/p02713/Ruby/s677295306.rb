k = gets.chomp.to_i

result = 0
1.step(k, 1) do |a|
  1.step(k, 1) do |b|
    1.step(k, 1) do |c|
      tmp_gcd = a.gcd(b)
      tmp_result = tmp_gcd.gcd(c)
      result = result + tmp_result
    end
  end
end

puts result
