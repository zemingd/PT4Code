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

max_range_even = 0
even_string = even[0]
range_start_even = 0


for i in 0..half-1 do
  if even[i] != even_string
    if i-range_start_even > max_range_even
      max_range_even = i-range_start_even
      even_string = even[i-1]
    end
    range_start_even = i
  end
end

if half-range_start_even > max_range_even
  max_range_even = half - range_start_even
  even_string = even[half-1]
end

max_range_odd = 0
odd_string = odd[0]
range_start_odd = 0

for j in 0..half-1 do
  if odd[j] != odd_string
    if j-range_start_odd > max_range_odd && odd[j-1] != even_string
      max_range_odd = j-range_start_odd
    end
    range_start_odd = j
  end
end

if half-range_start_odd > max_range_odd && odd[half-1]  != even_string
  max_range_odd = half-range_start_odd
end


puts 2*half - max_range_even - max_range_odd