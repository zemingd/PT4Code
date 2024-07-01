puts case gets.to_i % 10
  when 0,1,6,8; "pon"
  when 3; "bon"
  else "hon"
end