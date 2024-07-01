nm = gets.chomp.split(" ")
m = nm[1].to_i
a = gets.chomp.split(" ").map(&:to_i)

bc = m.times.map do
  bcin = gets.chomp.split(" ")
  [bcin[0].to_i, bcin[1].to_i]
end

a.sort!

bc.each do |b, c|
  update_count = 0
  a.each_with_index do |num, i|
    if update_count == b
      break
    end
    if num < c
      update_count += 1
      a[i] = c
      next
    end
    break
  end
  a.sort!
end

puts a.inject(:+)