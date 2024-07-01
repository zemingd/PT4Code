#方針: 753数を全列挙
n = gets.to_i

list = ["7","5","3"]
ary = []

def is_753?(s)
  f7=f5=f3 = false
  s.chars do |c|
    case c
    when "7"
      f7=true
    when "5"
      f5=true
    when "3"
      f3=true
    end
  end
  return f7&&f5&&f3
end

ary = (3..9).inject([]){|memo, digit| memo + ["7","5","3"].repeated_permutation(digit).select{|a| is_753?(a.join)}.map(&:join)}

ans = 0
ary.each_with_index do |a, i|
  if a.to_i <= n
    ans+=1
  end
end
 
p ans