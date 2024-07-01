n = gets.to_i
v = gets.split.map(&:to_i)
v_sort = v.sort

cnt = 0
n.times do |i|
  cnt += 1 if v[i] != v_sort[i]

  if cnt > 2
    puts 'NO'
    exit
  end
end

puts 'YES'