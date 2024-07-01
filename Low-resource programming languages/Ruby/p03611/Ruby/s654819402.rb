x = [0] * 100002
readline
readline.split.each do |s|
    a = s.to_i + 1
    x[a-1] += 1; x[a] += 1; x[a+1] += 1
end
puts x.max
