require 'prime'
x = gets.to_i
(0..100000).each do |a|
  b5 = a ** 5 - x
  if b5 != 0
    pd = Prime.prime_division(b5)
    if pd.size == 1
      if pd[0][1] == 5 || pd[0][0].abs == 1
        puts "#{a} #{pd[0][0]}"
        exit
      end
    end
  end
end
