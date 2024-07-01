a, b,c = gets.chomp.split(" ")

a = a.to_i
c = c.to_i

if b.eql? '+'
  print("#{a+c}\n")
elsif b.eql? '-'
  print("#{a-c}\n")
end
