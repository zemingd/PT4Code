s = gets.chomp.split('')
k = 0
max = 0
s.each do |str|
  if /[ACGT]/ =~ str
    k += 1
  else
    if max < k
    max = k
    end
    k = 0
  end
end
puts max
