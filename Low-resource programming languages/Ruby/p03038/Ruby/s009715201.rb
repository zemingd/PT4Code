n, m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort

bc = []
m.times do |i|
  bc << gets.chomp.split(" ").map(&:to_i)
end
bc.sort_by!{|(b,c)| -c }

index = 0
bc.each do |(b, c)|
  break if a_arr[index] >= c
  i = 0
  b.times do
    if a_arr[index + i] < c
      a_arr[index + i] = c
    else
      break
    end
    i += 1
  end
  index += i
  break if a_arr[index].nil?
end

puts a_arr.inject(0) {|sum,x| sum + x }
