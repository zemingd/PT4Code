def run
  s = gets.chomp
  
  ans = case s
        when "SSS"
          0
        when "RRR"
          3
        when "RRS", "SRR"
          2
        else
          1
        end

  puts ans
end

run
