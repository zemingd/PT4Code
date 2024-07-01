N, L = gets.chop.split.map(&:to_i)

min_taste = L
max_taste = L + N - 1

all_taste = ((min_taste + max_taste) * N) / 2
pie_taste = 0 

if L * (L + N - 1) <= 0
  pie_taste = all_taste
elsif max_taste < 0
  pie_taste = all_taste - max_taste
else
  pie_taste = all_taste - min_taste
end
puts pie_taste

