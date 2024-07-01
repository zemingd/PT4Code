n,q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
lr_arr = q.times.map{gets.chomp.split(" ").map(&:to_i)}

count = 0
arr = [0]
s.split("").each_cons(2) do |(a,b)|
  if "#{a}#{b}" == "AC" then
    count += 1
  end
  arr << count
end

lr_arr.each do |(l, r)|
  puts arr[r-1] - arr[l-1]
end
