N=gets.to_i
A=gets.split.map(&:to_i)

if A.length==A.uniq.length
    puts "YES"
else
    puts "NO"
end