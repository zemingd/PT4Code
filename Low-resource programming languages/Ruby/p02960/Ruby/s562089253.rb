MOD = 10**9 + 7
s = gets.chomp

s.reverse!

rem = [1,10,9,12,3,4]
count = Array.new(2){Array.new(13,0)}
count[1][0] = 1

(s.length).times do |i|
  if s[i] == '?'
    count[i%2] = Array.new(13,0)
    13.times do |j|
      10.times do |k|
        count[i%2][j] += count[(i-1)%2][(j-(k*rem[i%6]))%13]
      end
      count[i%2][j] %= MOD
    end
  else
    n = s[i].to_i
    count[i%2] = count[(i-1)%2].rotate(-(n*rem[i%6]))
  end
end

puts(count[(s.length-1)%2][5])