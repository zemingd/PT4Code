c = gets.strip
ary = ("a".."z").to_a
ary.each_with_index do |k, i|
  if k == c
    puts ary[i + 1]
  end
end