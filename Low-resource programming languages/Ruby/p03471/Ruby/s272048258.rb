u, o = gets.split.map(&:to_i)

a = false

w = 0
e = 0
r = 0

(0..u).each do |i|
  (0..u-i).each do |j|
      if 10000 * i + 5000 * j +1000 * (u-i-j)  == o
        w = i
        e = j
        r = u-i-j
        a = true
        break
      end

  end
end

b = -1, -1, -1
puts a ? "#{w} #{e} #{r}": b