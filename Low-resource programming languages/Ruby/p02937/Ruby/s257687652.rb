s = gets.chomp
t = gets.chomp.split('')
ans = [0]
isBreak = false

(1..100).each do |i|
  text = s * (10 ** i)
  break if text.index(t[0]).nil?
  t.each_with_index do |ts, j|
    text.split('').each_with_index do |s, k|
      if s == ts && ans[j] < k
        ans << k
        break
      end
      if ans.length == t.length + 1
        isBreak = true
        break
      end
    end
    break if isBreak
  end
  break if isBreak
end

if ans.last == 0
  puts -1
else
  puts ans.last + 1
end