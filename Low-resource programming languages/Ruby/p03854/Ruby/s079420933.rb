s = gets
['dream','dreamer','erase','eraser'].each do |str|
  s.gsub!(str, '')
end
print s == '' ? 'YES' : 'NO'
