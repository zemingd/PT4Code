n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)
evens = []
odds = []
v.each.with_index(1) do |e, i|
  if i % 2 == 0
    evens.push(e)
  else
    odds.push(e)
  end
end
def stats(arr)
  tmp = {}
  arr.each do |v|
    if tmp[v.to_s].nil?
      tmp[v.to_s] = 1
    else
      tmp[v.to_s] += 1
    end
  end
  tmp
end
evens_stats = stats(evens).sort.to_h
odds_stats = stats(odds).sort.to_h

even_best_count = evens_stats.values.first
even_best_number = evens_stats.keys.first
odd_best_count = odds_stats.values.first
odd_best_number = odds_stats.keys.first

if odd_best_number != even_best_number
  res = n - even_best_count - odd_best_count
else
  odd_best_count2 = odds_stats.values[1] || 0
  even_best_count2 = evens_stats.values[1] || 0
  res = [n - even_best_count - odd_best_count2, 
    n - even_best_count2 - odd_best_count].min
end
print("#{res}\n")