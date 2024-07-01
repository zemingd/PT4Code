
def h_m_div(a,b,c)
  num = 0
  for i in a..b
    if c%i == 0
      num = num+1
    end
  end
  num
end


ar = gets.split(" ")
a = ar[0].to_i
b = ar[1].to_i
c = ar[2].to_i

puts h_m_div(a,b,c)