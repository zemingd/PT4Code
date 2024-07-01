s = gets.chomp.split('')
t = gets.chomp.split('')
# p s, t

pre = {}
# binding.pry
s.each_index do |i|
  pre[s[i]] ||= {}
  pre[s[i]][t[i]] ||= 0
  pre[s[i]][t[i]] += 1
  if pre[s[i]].size >= 2
    puts "No"
    exit
  end
end
# p pre
pre2 = {}
s.each_index do |i|
  pre2[t[i]] ||= {}
  pre2[t[i]][s[i]] ||= 0
  pre2[t[i]][s[i]] += 1
  if pre2[t[i]].size >= 2
    puts "No"
    exit
  end
end
# p pre2
puts "Yes"