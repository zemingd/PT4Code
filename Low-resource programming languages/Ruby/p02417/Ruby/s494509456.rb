a = ("a".."z").to_a
b = Array.new(26, 0)

while x = gets
  x.downcase.chars { |i|
    for j in 0..25
      b[j] += 1 if i == a[j]
    end
  }
end

a.size.times { |c|
  puts "#{a[c]} : #{b[c]}"
}