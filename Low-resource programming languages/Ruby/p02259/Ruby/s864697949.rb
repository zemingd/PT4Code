def solve(items)
  sorted = false
  count = 0
  until sorted
    sorted = true
    1.upto(items.size-1) do |i|
      if items[i-1] > items[i]
        items[i], items[i-1] = items[i-1], items[i]
        sorted = false
        count += 1
      end
    end
  end
  [items, count]
end
gets
items, count = solve(gets.split(" ").map(&:to_i))
puts "#{items.join(" ")}\n#{count}"

