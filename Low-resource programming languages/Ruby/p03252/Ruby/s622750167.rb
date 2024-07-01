s = gets.chomp.split('')
t = gets.chomp.split('')

arr = t.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)

if arr.empty?
  puts 'Yes'
  exit
end

arr.each do |a|
  inds = t.each_with_index.select{|e, i| e == a}.map{|e| e[1]}
  tmp_arr = []
  inds.each do |i|
    tmp_arr.push(s[i])
  end
  if tmp_arr.uniq.size != 1
    puts 'No'
    exit
  end
end
puts 'Yes'
