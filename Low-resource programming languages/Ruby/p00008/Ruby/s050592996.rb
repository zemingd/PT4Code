while n = STDIN.gets
  n = n.chomp.to_i
  count=0
  (0..9).each do |a|
    (0..9).each do |b|
      (0..9).each do |c|
        if 0 <= n-a-b-c and n-a-b-c <= 9 then
          count+=1
        end
      end
    end
  end
  puts count
end