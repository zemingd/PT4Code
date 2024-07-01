s = gets.chomp
t = gets.chomp

n = s.length

n.times do |i|
  if s[i] != t[i]
    ss = s[i].clone
    tt = t[i].clone
    # p ss + " " + tt
    n.times do |j|
      if s[j] == ss
        s[j] = tt
      elsif s[j] == tt
        s[j] = ss
      end
    end
  end
  # p s + "-" + t
end

if s == t
  puts 'Yes'
else
  puts 'No'
end
