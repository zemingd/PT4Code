
def count_chars(s)
  h = Hash.new { 0 }
  s.chars.each { |c| h[c] += 1 }
  h
end

s = gets.chomp
t = gets.chomp

sh = count_chars(s)
th = count_chars(t)

ls = sh.each_key.map do |key|
  sh[key]
end
ls.sort!.reverse!

lt = th.each_key.map do |key|
  th[key]
end
lt.sort!.reverse!

puts "No" if lt !=ls 
puts "Yes" if lt == ls
