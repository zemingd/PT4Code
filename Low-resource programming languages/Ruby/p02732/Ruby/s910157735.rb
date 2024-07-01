a = gets
items = gets.split

hoge = items.group_by{|a| a}

result = {}

items.each do |x|
  unless result[x]
    sum = 0
    hoge.each do |k, v|
      count = v.count
      if k == x
        count -= 1
      end
      sum += (count * (count - 1)) / 2
    end
    result[x] = sum
  end
  puts result[x]
end
