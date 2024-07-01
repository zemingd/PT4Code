
def count_chars(s)
  h = Hash.new { 0 }
  s.chars.each { |c| h[c] += 1 }
  h
end

s = gets.chomp
t = gets.chomp

sh = count_chars(s)
th = count_chars(t)

fl = true
sh.each_key do |key|
  fl = false if sh[key] != th[key]
end

puts "Yes" if fl
puts "No" if !fl
