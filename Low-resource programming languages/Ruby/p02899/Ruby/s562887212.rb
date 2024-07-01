n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)

key = []

n.times do |i|

  row = [a[i], i]

  key << row

end


key =  key.sort

ans = ''


n.times do |i|

  if i == n-1
    ans += (key[i][1]+1).to_s
  else
    ans += (key[i][1]+1).to_s + ' '
  end
end

print ans
