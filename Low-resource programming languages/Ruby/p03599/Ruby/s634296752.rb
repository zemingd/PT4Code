A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

ans_amount = 0
ans_suger = 0
ans_rate = 0
31.times do |a|
  b_max = (F - a*A*100) / B*100
  0.upto(b_max) do |b|
    next if a == 0 && b == 0
    c_max = F - 100*A*a - 100*B*b
    0.upto(c_max) do |c|
      d_max = F - c_max
      0.upto(d_max) do |d|
        amount = 100*A*a + 100*B*b + C*c + D*d
        next if amount > F
        rate = (100 * (C*c + D*d)) / amount
        next if rate > E
        if rate > ans_rate
          ans_amount = amount
          ans_suger = C*c + D*d
        end
      end
    end
  end
end
puts "#{ans_amount} #{ans_suger}"
