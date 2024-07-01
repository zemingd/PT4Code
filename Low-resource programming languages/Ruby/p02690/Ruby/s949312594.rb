N = 10000
x = gets.to_i
dp = Array.new(N){ |i| i ** 5 }

dp.each_with_index do |a,i|
  dp.each_with_index do |b,j|
    if a + b == x
      puts [i,-j].join(" ")
      exit
    end

    if a - b == x
      puts [i,j].join(" ")
      exit
    end
  end
end


    