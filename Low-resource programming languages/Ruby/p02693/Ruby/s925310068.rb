K = $stdin.gets.to_i
A, B = $stdin.gets.split.map {|i| i.to_i }
a = A / K
am = A % K
b = B / K
bm = B % K
if (a >=1 && am == 0) || (b >= 1 && bm == 0)
  puts 'OK'
elsif a < b
  puts 'OK'
else
  puts 'NG'
end
