#set
n,k = gets.chomp.split(" ").map(&:to_i)
answer = 0
#main
if n == 1 then
  answer = k
else
  answer = k * ((k - 1) ** (n- 1))
end

print ("#{answer}\n")