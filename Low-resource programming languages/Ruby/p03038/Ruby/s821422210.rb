n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort

bc = []
m.times do |i|
  bc << gets.chomp.split(" ").map(&:to_i)
end
bc.sort_by!{|(b,c)| -c }

index = 0
bc.each do |(b, c)|
  tmp_index = index
  b.times do |i|
    j = index + i
    if a_arr[j] <= c
      a_arr[j] = c
      tmp_index = j
    else
      break
    end
  end
  index = tmp_index + 1
  break if a_arr[index].nil?
end

puts a_arr.inject(0) {|sum,x| sum + x }
