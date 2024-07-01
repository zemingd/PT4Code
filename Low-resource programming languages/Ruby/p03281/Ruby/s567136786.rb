N = gets.to_i
puts 1.step(N, 2).count {|n|
  cnt = 0
  1.step((n**0.5).to_i + 1) do |i|
    if n % i == 0
      cnt += 1
      cnt += 1 if i != n / i
    end
  end
  cnt == 8
}
