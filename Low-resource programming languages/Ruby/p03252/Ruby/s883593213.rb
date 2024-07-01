s = gets.chomp
t = gets.chomp

n = s.length

h = Hash.new{|h, k| h[k] = Array.new}

n.times do |i|
  h[t[i]] << s[i]
end

h.each do |k, v|
  if v.uniq.length != 1
    puts "No"
    exit
  end
end
puts "Yes"