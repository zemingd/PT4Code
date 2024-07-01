n,k = gets.split(" ").map(&:to_i)
s = gets.chomp

a = s.split('0').map(&:length)
b = s.split('1').map(&:length)
a.delete(0)
b.delete(0)

c = []
if b.empty?
  c = a
elsif a.size == b.size
  (a.size-k+1).times do |i|
    t = 0
    (k+1).times {|ii| t+= a[i+ii]}
    c << t
  end

  (a.size-k+1).times do |j|
    t = 0
    (k+1).times {|jj| t+= b[j+jj]}
    c[j] = c[j] + t
  end
elsif a.size > b.size
  (a.size-k).times do |i|
    t = 0
    (k+1).times {|ii| t+= a[i+ii]}
    c << t
  end

  (a.size-k).times do |j|
    t = 0
    k.times {|jj| t+= b[j+jj]}
    c[j] = c[j] + t
  end
else
  (b.size-k+1).times do |i|
    t = 0
    k.times do |ii|
      if a.size == 1
        t+= a[0]
      else
        t+= a[i+ii]
      end
    end
    c << t
  end
  (b.size-k+1).times do |j|
    t = 0
    k.times {|jj| t+= b[j+jj]}
    c[j] = c[j] + t
  end
end

puts c.max