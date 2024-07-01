h, w = gets.chomp.split(" ").map(&:to_i)
rows = []
h.times do
  rows.push(gets.chomp.chars)
end
judge = false
rows.each_with_index do |ary, aryIndex|
  ary.each_with_index do |elm, elmIndex|
    if elm == "#"
      judge = false
      searchAry = [[aryIndex - 1, elmIndex], [aryIndex, elmIndex - 1], [aryIndex, elmIndex + 1], [aryIndex + 1, elmIndex]]
      searchAry.each do |search|
        if search[0] >= 0 && search[0] <= h - 1 && search[1] >= 0 && search [1] <= w - 1
          if rows[search[0]][search[1]] == "#"
            judge = true
          end
        end
      end
      if judge == false
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"