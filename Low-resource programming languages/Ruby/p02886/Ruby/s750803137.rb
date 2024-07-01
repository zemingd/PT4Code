n = gets.to_i
ds = gets.split.map(&:to_i)

def f(ans, ls)
  if ls.length==2
    puts ans + ls[0]*ls[1]
  else
    new_ans =  ls.drop(1).map{|i|i*ls[0]}.inject{|sum, i| sum + i } + ans
    f(new_ans ,ls.drop(1))
  end
end

f(0, ds)