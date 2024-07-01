n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
lr_arr = q.times.map{gets.chomp.split(" ").map(&:to_i)}

arr = []
s.split("").each_cons(2) do |(a,b)|
  if "#{a}#{b}" == "AC" then
    arr << 1
  else
    arr << 0
  end
end

lr_arr.each do |(l, r)|
  puts arr[l-1..r-2].inject(:+)
end
