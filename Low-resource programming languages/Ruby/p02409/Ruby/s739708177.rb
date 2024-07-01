arr = Array.new(4) { Array.new(3) { Array.new(10,0) } }
gets.to_i.times do
  b,f,r,v = gets.split.map(&:to_i)
  arr[b-1][f-1][r-1] += v
end
arr.each_with_index do |b,i|
  puts '#' * 20 unless i.zero?
  b.each do |f|
    puts ' ' + f * ' '.chomp
  end
end