n, x = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
a.sort!
k = 0
a.each { |e|
  if (x - e >= 0)
    x = x - e
    k += 1
  end
}
if x != 0
  k -= 1
end

p k
