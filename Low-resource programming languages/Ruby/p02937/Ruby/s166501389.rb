s = gets.chomp
t = gets.chomp

h = {}
('a'..'z').each { |c| h[c] ||= [] }
(0...(s.length)).each { |i| h[s[i]].append(i) } 

if t.chars.any? { |c| h[c].empty? }
  puts '-1'
else
  i = -1
  answer = 0
  t.chars.each do |c|
    if h[c].empty?
      puts -1
      exit!
    end
    i = h[c].bsearch { |x| x > i }
    if i.nil?
      answer += s.length
      i = h[c].first
    end
  end
  puts answer + i + 1
end
