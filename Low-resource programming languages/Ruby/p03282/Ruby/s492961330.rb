a = $stdin.read.split("\n")
s,k = a[0], a[1]
position = nil
i = 0
s.split('').each do |b|
  unless b == '1'
    position = i
    break
  end
  i+=1
end
if position.nil?
  puts '1'
else
  if k.to_i <= 100
    if k.to_i < i
      puts '1'
    else
      puts s.split('')[i]
    end
  else
    puts s.split('')[i]
  end
end