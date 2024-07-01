N, Y = gets.split.map(&:to_i)

(0..([(Y / 10000), N].min)).each do |c10000|
  rest1 = Y - c10000 * 10000
  rest_c1 = N - c10000
  (0..([(rest1 / 5000), rest_c1].min)).each do |c5000|
    rest2 = rest1 - c5000 * 5000
    rest_c2 = rest_c1 - c5000
    if rest_c2 * 1000 == rest2
      c1000 = rest_c2
      puts "#{c10000} #{c5000} #{c1000}"
      exit 0
    end
  end
end
puts '-1 -1 -1'
