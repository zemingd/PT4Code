a, b = gets.split.map(&:to_i)
s = gets.chomp.chars

flag = true

(0...a).each do |i|
  unless s[i].in?((1..9).to_a)
    flag = false
  end
end

if s[a] != '-'
  flag = false
end

(a+1..b-1).each do |j|
  unless s[j].in?((1..9).to_a)
    flag = false
  end
end

if flag
  puts 'Yes'
else
  puts 'No'
end