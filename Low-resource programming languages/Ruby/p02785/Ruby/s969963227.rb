n, k = gets.split(" ").map(&:to_i)
em  = []
em = gets.split(" ").map(&:to_i)

em.sort!
count = n - 1
#p em

if k > em.length
  k = em.length
end
while k > 0
  em[count] = 0
  count -= 1
  k -= 1

end
#p em
p em.inject(:+)
