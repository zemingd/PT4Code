n,q = $stdin.gets.split.map(&:to_i)
s = $stdin.gets.chomp

q.times do 
  result = 0
  l,r = $stdin.gets.split.map(&:to_i)
  str = s[l-1..r-1]
  str.size.times do |i|
    if str[i]=='A'
      if !str[i+1].nil?&&str[i+1]=='C'
        result += 1
      end
    end
  end
  puts result
end 

