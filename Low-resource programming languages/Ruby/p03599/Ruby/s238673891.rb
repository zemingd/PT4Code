A, B, C, D, E, F = gets.split.map(&:to_i)
answer = []

0.upto(F / (100 * A)) do |a_num|
  0.upto(F / (100 * B)) do |b_num|
    sugar_limit = F - (100 * A * a_num + 100 * B * b_num)
    next if sugar_limit.negative?

    0.upto(sugar_limit / C) do |c_num|
      0.upto(sugar_limit / D) do |d_num|
        sugar = C * c_num + D * d_num
        water = 100 * (A * a_num + B * b_num)
        weight = sugar + water

        if weight <= F && 100 * sugar <= E * water
          answer << [weight, sugar] unless weight.zero?
        end
      end
    end
  end
end

puts answer.max_by { |w, s| s.to_f / w }.join(' ')