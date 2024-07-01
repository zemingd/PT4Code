A, B = gets.split(' ').map{|n| n.to_i}
cds = [1]
sum = 1
(2..([A, B].min)).each do |i|
  next if A % i != 0 || B % i != 0
  
  if cds.length == 1
    cds << i
    sum += 1
    next
  end
  
  catch :done do
    cds.each do |cd|
      if cd == 1
        next
      elsif i % cd == 0
        throw :done
      else        
        j = i % cd
        while j > 0 do
          cd, j = j, cd % j
        end
        throw :done if cd != 1
      end
    end
    cds << i
    sum += 1
  end
end
p sum