gets
puts gets.split.all?{|t| t=t.to_i; t.odd?||t%3==0||t%5==0 } ? :APPROVED : :DENIED