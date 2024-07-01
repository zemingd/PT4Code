n = gets.to_i
a = gets.split.map(&:to_i).sort
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
b = []
n.times do |i|
  if false
    b << a[i]
  else
    f = true
    b.each do |j|
      if a[i] % j == 0
        f = false
        break
      end
    end
    b << a[i] if f
  end
end
puts b.select{|x| h[x] == 1}.size