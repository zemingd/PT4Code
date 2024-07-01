class MyLib
  def count_div(a,b,num)
    first = a+(num-a%num)%num
    count = (b-a+1)/num
    additional = (first + count*num <= b) ? 1 : 0
    count += additional
  end
end
a, b, c, d = gets.split.map(&:to_i)
# 時間かかる
# a.upto(b) do |num|
#   count+=1 if num%c!=0 && num%d!=0
# end

# 全部-(cで割れる+dで割れる)+(cかつdで割れる)
res = b-a+1 - MyLib.new.count_div(a,b,c) - MyLib.new.count_div(a,b,d)+ MyLib.new.count_div(a,b,c.lcm(d))

puts res