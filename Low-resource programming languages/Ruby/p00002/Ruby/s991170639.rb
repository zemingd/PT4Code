x = gets()


while x
   y = x.split()
   a = y[0].to_i
   b = y[1].to_i

   c = a + b
   st = c.to_s
   leng = st.length
   puts leng
   
   x = gets()
end
