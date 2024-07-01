io = STDIN
a,b=io.gets.split.map(&:to_i)
def pal?(num)
  str=num.to_s
  str.split(//).reverse.join == str
end
puts (a..b).select{|i|pal?i}.size
