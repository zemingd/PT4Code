s = STDIN.gets.chomp.split('').map(&:to_i)

time = 0

(1..s.length).each do |i|
  if s[i] == s[i-1]
    s[i] = s[i-1] == 0 ? 1 : 0
    time += 1
  end
end

puts time
