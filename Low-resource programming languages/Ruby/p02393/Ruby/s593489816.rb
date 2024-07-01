def bubble_sort(ary)
  (ary.length - 1).times do
    for n in 0...ary.length-1
      ary[n],ary[n + 1] = ary[n + 1],ary[n] if ary[n] > ary[n + 1]
    end
  end
end

ary = gets.chomp.split.map(&:to_i)

bubble_sort(ary)
puts "#{ary[0]} #{ary[1]} #{ary[2]}"