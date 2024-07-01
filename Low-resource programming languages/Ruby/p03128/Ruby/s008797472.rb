N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

bar = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
bar2num = Hash.new(0)
A.each do |n|
  b = bar[n]
  bar2num[b] = n if n > bar2num[b]
end 
BARS = bar2num.keys.sort

def calc(r)
  if r == 0
    []
  elsif r < 0
    false 
  else  
    BARS.each do |b|
      tmp = calc(r - b)
      if tmp
       return (tmp << b)
      end 
    end
    false
  end
end

puts calc(N).map!{|b| bar2num[b]}.sort!.reverse!.join