a, b = gets.strip.split.map(&:to_i)
c = 1
ans = "No"
3.times do
  if (a * b * c).odd?
    ans = "Yes"
  end
  c += 1
end
puts ans