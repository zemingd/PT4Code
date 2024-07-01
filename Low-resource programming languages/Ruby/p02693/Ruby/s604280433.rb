k = gets.to_i
a, b = gets.split.map(&:to_i)

(a..b).each do |i|
  if i % k == 0
    print "OK\n"
    exit
  end
end

print "NG\n"