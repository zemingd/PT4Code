#方針: 753数を全列挙
n = gets.to_i

list = ["7","5","3"]
ary = []

(3..9).each do |digit|
  (0..3**digit-1).each do |bit|
    tmp = ""
    (0..bit.to_s(3).rjust(digit,"0").length-1).each do |i|
      tmp += list[bit.to_s(3).rjust(digit,"0")[i].to_i]
    end
    ary << tmp
  end
end

ary.each_with_index do |num, i|
  f7=f5=f3 = false
  num.chars do |c|
    case c
    when "7"
      f7=true
    when "5"
      f5=true
    when "3"
      f3 = true
    end
    if f7&&f5&&f3
      ary[i]  = [num,true]
    else
      ary[i] = [num,false]
    end
  end
end

ans = 0
ary.each do |a|
  if a[0].to_i <= n && a[1] == true
    ans+=1
  end
end
p ans