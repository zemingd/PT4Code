S=gets.chomp
T=gets.chomp
leng = S.length

a={}

for i in 0..leng-1 do
  if a[T[i]] == nil
    a[T[i]] = S[i]
  end

  if a[T[i]] != S[i]
    puts "No"
    exit
  end
end

puts "Yes"