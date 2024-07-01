n = gets.to_i
n + 1
raw_array = gets.chomp.split(' ').map(&:to_i)

even_array = []
odd_array = []

raw_array.each_with_index do |item, idx|
  if idx % 2 == 0
    even_array << item
  else
    odd_array << item
  end
end

even_count_array = []
even_array.uniq.map {|e|
  even_count_array << even_array.count(e)
}

odd_count_array = []
odd_array.uniq.map {|e|
  odd_count_array << odd_array.count(e)
}

even_count = 0
even_count = even_count_array.reduce {|memo, item| 
  memo + item
}
even_count -= even_count_array.max

odd_count = 0
odd_count = odd_count_array.reduce {|memo, item| 
  memo + item
}
odd_count -= odd_count_array.max

if even_count_array.length == 1
  even_count_min = 0
end

if odd_count_array.length == 1
  odd_count_min = 0
end

result = even_count + odd_count

if even_array == odd_array
  result = raw_array.length / 2
end

puts result
