io = STDIN
N=io.gets.to_i
ar=io.gets.split.map(&:to_i)
srt=ar.sort
if ar.zip(srt).select{|i,j|i!=j}.size<=2
  puts 'YES'
else
  puts 'NO'
end
