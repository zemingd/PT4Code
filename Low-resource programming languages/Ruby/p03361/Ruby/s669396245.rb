H, W = gets.chomp.split.map(&:to_i)

arr = []
illegals = []

result = true

def search_alone(str)
  len = str.length
  counter = 0
  bads = []
  while counter < len
    if str[counter] === '#'
      if str[counter+1] === '#'
        counter += 2
      elsif str[counter-1] === '#'
        counter += 1
      else
        bads << counter
        counter += 1
      end
    else
      counter += 1
    end
  end
  bads
end

H.times do
  arr << gets.chomp
end

for el in arr
  illegals << search_alone(el)
end

illegals.each_with_index {|el, index|
  el.each do |i|
    targets = [arr[[index-1, 0].max][i], (arr[index+1] || [])[i]]
    unless targets.include?('#')
      result = false
      break
    end
  end
  next if result
}

if result
  puts 'YES'
else
  puts 'NO'
end