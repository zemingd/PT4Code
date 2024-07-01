N, Y = gets.split.map(&:to_i)

def errputs
  puts "-1 -1 -1"
end

if N*10000 < Y or N*1000 > Y
  errputs
  exit
else
  0.upto(Y/10000) do |n10k|
    y1 = Y - 10000*n10k
    0.upto(y1/5000) do |n5k|
      y2 = y1 - 5000*n5k
      n1k = y2/1000
      if n10k + n5k + n1k == N
        puts "#{n10k} #{n5k} #{n1k}"
        exit
      end
      break if n10k + n5k > N
    end
  end
end
errputs