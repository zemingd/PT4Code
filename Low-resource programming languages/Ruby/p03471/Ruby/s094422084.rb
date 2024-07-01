num_of_bills, sum = gets.split.map &:to_i
bills = [10000, 5000, 1000]

for count_10k in 0 .. num_of_bills
  for count_5k in 0 .. num_of_bills - count_10k
    if count_10k * 10000 + count_5k * 5000 + (num_of_bills - count_5k - count_10k) * 1000 == sum
      puts [count_10k, count_5k, num_of_bills - count_5k - count_10k].join(" ")
      exit
    end
  end
end

puts "-1 -1 -1"
