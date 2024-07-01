a, b = gets.split.map(&:to_i)
s = gets.chomp.chars

flag = true

(0...a).each do |i|
  unless (1..9).to_a.include?(s[i].to_i)
    flag = false
  end
end

if s[a] != '-'
  flag = false
end

(a+1..b-1).each do |j|
  unless (1..9).to_a.include?(s[j].to_i)
    flag = false
  end
end

if flag
  puts 'Yes'
else
  puts 'No'
end