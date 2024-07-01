a,b,c = gets.chomp.split(" ").map(&:to_i)

hash = {}
k = 0
while true

  if (k * a) % b == c
    puts "YES"
    exit(0)
  else
    if hash[(k * a) % b] == true
      puts "NO"
      exit(0)
    else
      hash[(k * a) % b]= true
      k += 1
    end
  end
end
#print("#{a}#{b}#{c}")
