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
  a.map! do |num|
    if update_count == b
       next num
    end
    if num < c
      update_count += 1
      next c
    end
    num
  end
  a.sort!
end

puts a.sum