N = gets.to_i
A = gets.chomp.split.map(&:to_i)

natural = []
minus = []
A.each do |a|
  if a < 0
    minus << a
  elsif
    natural << a
  end
end
natural.sort!
minus.sort!

if minus.length % 2 == 0
  puts natural.inject(:+) - minus.inject(:+)
else
  ans = 0
  if natural.length > 1
    natural[1..-1].each do |n|
      ans += n
    end
  end
  if minus.length > 1
    minus[0..-2].each do |m|
      ans -= m
    end
  end
  if natural[0] < -minus[-1]
    ans -= natural[0]
    ans -= minus[-1]
  else
    ans += natural[0]
    ans += minus[-1]
  end
  puts ans
end