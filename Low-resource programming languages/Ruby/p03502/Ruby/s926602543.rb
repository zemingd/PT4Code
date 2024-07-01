io = STDIN
n=io.gets.chomp
def f n
  n.chars.map(&:to_i).inject(:+)
end
if n.to_i%f(n)==0
  puts 'Yes'
else
  puts 'No'
end
