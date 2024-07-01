N = gets.chomp.to_i
strs = gets.chomp.split(' ').map(&:to_i)

ans = 0
strs.each_with_index do |str, i|
  if strs[0..i].all?{ |num| num >= strs[i] }
    ans += 1
  end
end
puts ans