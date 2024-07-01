puts case gets.to_i
when 0...1200 then :ABC
when 1200...2800 then :ARC
else :AGC
end