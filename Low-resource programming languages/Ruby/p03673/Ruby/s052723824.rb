str= gets.chomp

a = gets.chomp.split(" ").map(&:to_i);
b = []

(a.length).times do |n|
  if n % 2 == 0
    b << a[n]
  else
    b.unshift a[n]
  end
end

b.reverse! if (a.length) % 2 == 1
puts b.join(" ")
