N = gets.chomp.to_i
arry = gets.chomp.split(" ").map(&:to_i)
count = 0

(0...N).each do |i|
  new_arry = arry.dup
  new_arry.delete_at(i)
  new_arry.uniq.map{|item| [item, new_arry.count(item)]}.to_h.each do |key, value|
    count += (value <= 1 ? 0 : value*(value-1)/2)
  end
  puts count
  count = 0
end