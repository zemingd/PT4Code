def kaibun(str)
  len = str.length
  (len/2).times do |i|
    if S[i] == S[(len-1)-i] then
      result = true
    else
      result = false
      break
    end
  end

end

attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end

S = attrs[0][0]
len = S.length

result = false
if kaibun(S) then
  n = (len-1)/2
  sub1 = S[0..(n-1)]
  if kaibun(sub1) then
    n = (len+3)/2
    sub2 = S[(n-1)..(len-1)]
    if kaibun(sub2) then
      result = true
    end
  end
end

puts result ? "Yes" : "No"