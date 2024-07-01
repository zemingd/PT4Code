n = gets.to_i
as = gets.chomp.split.map(&:to_i)
b = []
as.each_with_index do |a,i|
  if i % 2 == 0
    b.push(a)
  else
    b.unshift(a)
  end
end

if as.size.odd?
  puts b.reverse.join(" ")
else
  puts b.join(" ")
end