s = gets.chomp.chars.map(&:to_i)
k = gets.to_i

ftrillion = 5e15.to_i

s.each do |i|
  if k < i**ftrillion
    puts i
    exit
  else
    k -= i**ftrillion
  end
end