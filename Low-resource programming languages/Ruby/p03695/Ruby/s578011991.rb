n=gets.to_i
a=gets.split.map(&:to_i)

color=a.map{|e| e/400}
cnt=0
8.times do |i|
  cnt+=1 if color.include?(i)
end

if cnt==0
  puts "1 #{color.count(8)}"
else
  puts "#{cnt} #{cnt+color.count(8)}"
end
