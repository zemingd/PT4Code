x,n = gets.chomp.split(' ').map(&:to_i)
if (n == 0)
  puts x
  exit
end
p = gets.chomp.split(' ').map(&:to_i)
hoge = nil
fuga = nil

x.upto(201) do |i|
  unless (p.include?(i))
    hoge = i
    break
  end
end
x.downto(-101) do |i|
  unless (p.include?(i))
    fuga = i
    break
  end
end

puts ((x-fuga).abs <= (x-hoge).abs) ? fuga : hoge