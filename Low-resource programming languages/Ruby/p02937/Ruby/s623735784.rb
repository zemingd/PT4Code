s = gets.chomp.chars
t = gets.chomp.chars
N = s.length
unless (t-s).empty?
  puts -1
  exit
end
s_chars = {}
s.each_with_index do |char, i|
  if s_chars[char].nil?
    s_chars[char] = [i]
  else
    s_chars[char].push(i)
  end
end
sum = 0
last_found = N-1
t.each do |char|
  index = s_chars[char].bsearch{|x| x > last_found}
  if index.nil?
    index = s_chars[char].first
    sum += (N - last_found + index)
  else
    sum += (index - last_found)
  end
    last_found = index
    # puts "sum:#{sum}"
end
puts sum