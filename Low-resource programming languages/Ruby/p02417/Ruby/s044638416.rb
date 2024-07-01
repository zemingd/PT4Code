a = ("a".."z").to_a
b = Array.new(26, 0)

while x = gets
  x = x.downcase
  x.chars { |i|
    for j in 0..25
      i == a[j] && b[j] += 1
    end
  }
end

a.size.times { |c|
  puts "#{a[c]} : #{b[c]}"
}