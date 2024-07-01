b = ""
.split(' ').map{|temp| temp.to_i}.sort,"\n"split(' ').map{|temp| temp.to_i}isort,"\n"
a = gets.to_s.split(' ').map{|temp| temp.to_i}.sort
for i in 0..(a.size - 1) do
b = b + a[i].to_s + " "
end
puts b.chomp