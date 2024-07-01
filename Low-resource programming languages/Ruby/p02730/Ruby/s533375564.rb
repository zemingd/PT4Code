S = gets.strip

sz = S.size
if S.eql?(S.reverse)
  len = (sz - 1) / 2
  puts S.slice(0, len).eql?(S.slice(len * -1, len)) ? 'Yes' : 'No'
else
  puts 'No'
end
