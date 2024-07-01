n, y = gets.split(" ").map(&:to_i)
0.upto(n) do |yen_10000|
  0.upto(n - yen_10000) do |yen_5000|
    yen_1000 =  n - yen_10000 - yen_5000 > 0 ? n - yen_10000 - yen_5000 : 0
    sum = yen_10000 * 10000 + yen_5000 * 5000 + yen_1000 * 1000
    # p "#{yen_10000} #{yen_5000} #{yen_1000}"
    if sum == y
      puts "#{yen_10000} #{yen_5000} #{yen_1000}"
      exit
    end
  end
end

puts "-1 -1 -1"