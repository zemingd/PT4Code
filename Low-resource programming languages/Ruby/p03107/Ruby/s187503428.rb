S = STDIN.gets

oneNum = 0
zeroNum = 0

S.chars { |c|
  if c == '0' then
    oneNum = oneNum + 1
  else
    zeroNum = zeroNum + 1
  end
}

small = oneNum < zeroNum ? oneNum : zeroNum
puts small * 2