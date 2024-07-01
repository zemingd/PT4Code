def perfect_square(a, b)
  sum = a.zip(b).inject(0){|r,(x,y)| r + (x-y)**2}

  (sum**0.5).round**2 == sum
end

n, d = gets.split.map(&:to_i)
a = n.times.map{ gets.split.map(&:to_i) }

cnt = 0
n.times do |i|
  (i+1).upto(n-1) do |j|
    if perfect_square(a[i], a[j])
      cnt += 1 
    end
  end
end

puts cnt
