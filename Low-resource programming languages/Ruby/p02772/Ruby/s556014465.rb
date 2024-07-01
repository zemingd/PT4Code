N=gets.to_i
a=gets.chomp.split.map(&:to_i)

a.delete_if{|x| x%2!=0}
a.delete_if{|x| x%3==0}
a.delete_if{|x| x%5==0}

if a.empty?
    puts "APPROVED"
else
    puts "DENIED"
end