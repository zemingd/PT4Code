n, y = gets.split.map(&:to_i)
0.upto(n) do |bill_1|
  0.upto(n) do |bill_2|
    next if (bill_1 + bill_2) > n
    bill_3 = n - (bill_1 + bill_2)
    if 10000 * bill_1 + 5000 * bill_2 + 1000 * bill_3 == y
      puts "#{bill_1} #{bill_2} #{bill_3}"
      exit
    end
  end
end
puts "-1 -1 -1"
