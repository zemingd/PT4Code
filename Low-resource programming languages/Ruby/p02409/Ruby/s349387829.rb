s=Array.new(1200,0)
n=gets.to_i
n.times do
  b,f,r,v=gets.split.map(&:to_i)
  s[(b-1)*30+(f-1)*10+(r-1)]+=v
end
for b in 0..3
  for f in 0..2
    msg=''
    for r in 0..9
      msg+=' '+s[b*30+f*10+r].to_s
    end
    puts msg
  end
  puts '####################' if b<3
end

