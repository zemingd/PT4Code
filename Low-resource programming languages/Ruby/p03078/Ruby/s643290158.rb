x,y,z,k = gets.split(" ").map(&:to_i)

a = gets.split(" ").map(&:to_i).sort.reverse
b = gets.split(" ").map(&:to_i).sort.reverse
c = gets.split(" ").map(&:to_i).sort.reverse

ary = []
x.times do |i|
  y.times do |j|
    break if (i + 1) * (j + 1) > k
    z.times do |t|
      break if (i + 1) * (j + 1) * (t + 1) > k
      ary << a[i] + b[j] + c[t]
    end
  end
end

ary.sort.reverse
k.times{|i| puts ary[i] }