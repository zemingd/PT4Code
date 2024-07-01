N,M = gets.chomp.split.map(&:to_i)

A = gets.chomp.split.map(&:to_i)

#puts N,M
#puts A

#puts A.inject(:+)
sum_A = A.inject(:+)
sort_A = A.sort {|x,y| y<=>x}
m4 = (4*M)
i = 0
result_A = []

begin
M.times do 
  result_A << sort_A[i]
  i+=1
end

#puts result_A
#puts sum_A / m4
check = sum_A / m4

result_flg = true
result_A.each do |a|
  if a < check
    result_flg = false
  end
end

rescue
puts "No"

ensure
puts result_flg ? "Yes" : "No"
end