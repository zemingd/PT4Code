n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
personel = Array.new(n,0)
i = 0
boss = 1
while i < n - 1
  if arr[i] == boss
    personel[boss-1] += 1
  else
    boss = arr[i]
    personel[boss-1] += 1
  end
  i += 1
end
puts personel
