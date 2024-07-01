puts case gets.chomp[-1].to_i
when 3; 'bon'
when 0,1,6,8; 'pon'
else; 'hon'
end