n = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)

x.length.times do |c|
  selected = x.each_with_index.select{|v,i|i!=c}
  selected.map! do |v|
    v[0]
  end
  selected.sort!
  puts selected[(n[0]+1)/2-1]
end
