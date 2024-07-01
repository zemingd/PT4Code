N = gets.chomp.to_i
arry = gets.chomp.split(" ").map(&:to_i)
count = 0
count_num = 0

(0...N).each do |i|
  new_arry = arry.dup
  new_arry.delete_at(i)
  (0...N).each do |k|
    new_arry.each do |num|
      if k==num
        count_num += 1
      end
    end
    count += (count_num <= 1 ? 0 : count_num*(count_num-1)/2)
    count_num = 0
  end
  puts count
  count = 0
end