n = gets.chomp.to_i
x = gets.chomp.split(' ').map(&:to_i)

l_i = n / 2 - 1
h_i = n / 2
l,h = [x.sort[l_i], x.sort[h_i]]

x.each do |num|
  if (num <= l)
    puts h
  elsif (h <= num)
    puts l
  end
end