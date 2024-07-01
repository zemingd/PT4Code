S=gets.chomp
T=gets.chomp
N=S.length
map=Hash.new

N.times do |i|
  if map[S[i]] && map[S[i]] != T[i]
    puts "No"
    exit
  end
  map[S[i]]=T[i]
end

if map.length != map.values.uniq.length
  puts "No"
else
  puts "Yes"
end  