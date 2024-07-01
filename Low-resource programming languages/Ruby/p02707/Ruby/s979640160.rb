N = gets.to_i
ary = gets.strip.split(nil).map(&:to_i)
png = []
i = 1
while i <= N do
  png[i-1] = ary.count(i)
  i += 1
end
puts png