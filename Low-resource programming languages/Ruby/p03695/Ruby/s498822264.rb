n=gets.to_i
a=gets.split.map(&:to_i)

color=a.map{|e| e/400<=8? e/400 : 8}
any=color.inject(0){|res, e| res+=e>=8? 1: 0}

if any==color.size
  puts "1 #{any}"
else
  cnt=color.uniq.size-(any>0? 1: 0)
  puts"#{cnt} #{cnt+any}"
end
