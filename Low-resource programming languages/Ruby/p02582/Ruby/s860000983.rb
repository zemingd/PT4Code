S = gets.strip

puts case S
      when /RRR/; 3
      when /RR/;  2
      when /R/;   1
      else;       0
end