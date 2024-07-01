n = gets.to_i
pn = gets.split(" ").map(&:to_i)
i = 1
count = n
while n >= i do
  j = 1
  while i >= j do
    @memo = pn[i-1]
    if @memo >pn[j-1]
      count -= 1
      break
    end
    j+=1
  end
  i+=1
end
p count