def sort(a, b)
  if a > b
    t = a
    a = b
    b = t
  end
  return a, b
end

n = gets.chomp.split(" ").map &:to_i

n[0], n[1] = sort(n[0, 2])
n[1], n[2] = sort(n[1, 2])
n[0], n[1] = sort(n[0, 2])

puts "#{n[0]} #{n[1]} #{n[2]}"