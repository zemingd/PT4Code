n=gets.chomp.to_i
v=gets.chomp.split(" ").map { |e| e.to_i }
even = []
odd = []

for i in 0..n-1 do

  if i%2 == 0
    even[i/2] = v[i]
  else
    odd[i/2] = v[i]
  end
end

even = even.sort
odd = odd.sort

half = n/2
dp_even=0
dp_odd=0
max_even = 0
max_odd = 0
indx_even = 0
indx_odd = 0
string_even = even[0]
string_odd = odd[0]

for i in 0..half-1 do
  if even[i] != even[indx_even]

    if dp_even > max_even
      string_even = even[indx_even]
      max_even = dp_even
    end
    indx_even = i
    dp_even = 0
  end


  if even[i] == even[indx_even]
    dp_even += 1
  end

end

if dp_even > max_even
  string_even = even[half-1]
  max_even = dp_even
end


for i in 0..half-1 do
  if odd[i] != odd[indx_odd]
    if dp_odd > max_odd && string_even != odd[i-1]
      max_odd = dp_odd
    end
    indx_odd = i
    dp_odd = 0
  end

  if odd[i] == odd[indx_odd]
    dp_odd += 1
  end
end


if dp_odd > max_odd && string_even != odd[half-1]
  max_odd = dp_odd
end


puts (half - max_even) + (half - max_odd)