n= gets.to_i
ary = gets.chomp.split(' ').map(&:to_i)


0.upto(ary.size-1) do |i|
  if ary[i]%2==0
    if ary[i]%3!=0 || ary[i]%5!=0
      puts 'DENIED'
      break
    elsif ary[i]%6==0 || ary[i]%10==0
      next
    end
  else
    next
  end
  puts 'APPROVED'
end
