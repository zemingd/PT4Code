n = gets.to_i
arr=gets.split(' ').map &:to_i

m=Hash.new(0)
l=Hash.new(0)
arr.each_with_index do |a,i|
  m[a] += 1 if i%2==0
  l[a] += 1 if i%2==1
end
mm=Hash[m.sort_by {|_,v| -v}]
ll=Hash[l.sort_by {|_,v| -v}]

if mm.keys.first == ll.keys.first
  if mm.size > 1
    puts [mm.values[1..-1].inject(:+).to_i + ll.values[0]+ll.values[2..-1].inject(:+).to_i,
      mm.values[0]+mm.values[2..-1].inject(:+).to_i + ll.values[1..-1].inject(:+).to_i
    ].min
  else
    puts mm.keys.first + ll.keys.first
  end
else
  ret = [mm,ll].inject(0) do |acc, item|
    if item.size > 1
      acc + item.values[1..-1].inject(:+).to_i
    else
      acc
    end
  end
  puts ret
end