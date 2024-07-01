S = gets.chomp.chars
Q = gets.to_i
QList = []
Q.times{ QList << gets.chomp }

reverse = false
QList.each do  |query|
  ch = query.split
  if ch[0].to_i == 1
    reverse = !reverse
  elsif ch[1].to_i == 1 and reverse or ch[1].to_i == 2 and !reverse
    S << ch[2]
  else
    S.unshift(ch[2])
  end
end

if reverse
  S.reverse!
end

puts S.join
