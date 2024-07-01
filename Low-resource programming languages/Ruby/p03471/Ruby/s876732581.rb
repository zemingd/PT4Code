n, y = gets.chomp.split.map(&:to_i)

(0..n).each do |num_10000|
  (0..(n-num_10000)).each do |num_5000|
    if 10000*num_10000 + 5000*num_5000 + 1000*(n-num_10000-num_5000) == y then
      print("#{num_10000} #{num_5000} #{n-num_10000-num_5000}")
      return
    end
  end
end
print("-1 -1 -1")
