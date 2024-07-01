n, m = gets.split.map(&:to_i)
brokens = []
m.times do
  brokens << gets.to_i
end

options = [1]

(1..n).each do |i|
  if brokens.bsearch { |broken| broken >= i } == i
    options[i] = 0
  else
    case i
    when 1
      options[i] = options[i - 1]
    else
      options[i] = options[i - 1] + options[i - 2]
    end
  end
end

puts options.last % 1_000_000_007
