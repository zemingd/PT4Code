h,w = gets.split.map(&:to_i)
arr = []
row = Array.new(h)
line = Array.new(w)
j = 0
h.times do
  a = gets.chomp.split('')
  checkr = 0
  arr << a
  a.each.with_index do |b,i|
    if b == "#"
      checkr = 1
      line[i] = 1
    end
  end
  row[j] = checkr
  j += 1
end
j = 0
arr.each do |a|
  if row[j] == 1
    a.each.with_index do |b,i|
      if line[i] == 1
        print "#{b}"
      end
    end
    puts ''
  end
  j += 1
end