io = STDIN
a,b,c,k=io.gets.split.map(&:to_i)
ans=0
if a>=k
  puts k
else
  k-=a
  if b>=k
    puts a
  else
    k-=b
    if c>=k
      puts a-k
    end
  end
end
