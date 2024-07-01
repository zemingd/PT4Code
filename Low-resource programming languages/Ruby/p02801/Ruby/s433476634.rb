c = gets
arr=[*'a'..'z']

idx=0

arr.each_with_index do |v, i|
  #puts "#{v} #{i}"
  if v == c
    idx = i+1
  end
end

puts arr[idx]