n= gets.chomp.to_i
ab = []
n.times do
  a, b = gets.split(" ").map(&:to_i)
  ab.push({a: a, b: b})
end

ab.sort_by! { |ab| ab[:a] }
ab.sort_by! { |ab| ab[:b] }

sum_a = 0
answer = "Yes"

n.times do
  unless sum_a += ab[n][:a] =< ab[n][:b]
    answer = "No"
    break
  end
end

puts answer
