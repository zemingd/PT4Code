n = gets.to_i
array = []
answer = "Yes"

(1..n).each do
  array.push(gets.chomp.split(""))
end

if array.length == array.uniq.length
  (0..n-2).each do |number| 
    if array[number].last != array[number+1].first
      answer = "No"
      break
    end
  end
else
  answer = "No"
end

puts answer