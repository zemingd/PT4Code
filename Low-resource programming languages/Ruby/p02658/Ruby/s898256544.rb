_n=gets.to_i
ary=gets.split.map(&:to_i)
if ary.include?(0)
  puts 0
  exit
end
ans=1
ary.each do |a|
  if ans*a>10**18
    puts -1
    exit
  else
    ans*=a
  end
end
puts ans