s = gets.strip
n = s.size

def parindrome?(str)
  ar = str.chars
  
  while ar.size > 1 do
    head = ar.shift
    last = ar.pop
    return false if head != last
  end

  true
end

fhalf = s[0...((n-1)/2)]
lhalf = s[((n+3)/2-1..-1)]

if parindrome?(s) && parindrome?(fhalf) && parindrome?(lhalf)
  puts 'Yes'
else
  puts 'No'
end
