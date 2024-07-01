n = gets.to_i
array = gets.split(" ").map{|p| p.to_i}

count = 0
for i in 0..n-3
  subarray = array.slice(i..i+2)
  if (subarray[1] != subarray.max) && (subarray[1] != subarray.min)
    count += 1
  end
end

p count