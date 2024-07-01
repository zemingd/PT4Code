l,r = gets.strip.split.map(&:to_i)
if r-l >= 2018
  puts 0
else
  ary = []
  for i in l..r-1
    for k in i+1..r
      ary.unshift((i*k)%2019)
    end
  end
  puts ary.min
end