def sort(a, b)
  if a > b
    t = a
    a = b
    b = t
  end
  a, b
end

n = Array.new(3)
n[0..2] = gets.chomp.split(" ").map &:to_i

n[0, 2] = sort(n[0], n[1])
n[1, 2] = sort(n[1], n[2])
n[0, 2] = sort(n[0], n[1])

puts "#{n[0]} #{n[1]} #{n[2]}"