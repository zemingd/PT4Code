io = STDIN
N=io.gets.to_i
ar=io.gets.split.map(&:to_i)
if ar.uniq.size == N
  puts 'YES'
else
  puts 'NO'
end
