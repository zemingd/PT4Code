def f(res,i)
  return res ^ i
end


A,B = readline.chomp.split.map(&:to_i)

f( A % 2 == 0)
  case (B-A) % 4
  when 1
    p 1
  when 2
    p 1 ^ B
  when 3
    p 0
  when 0
    p B
  end
else
  case (B-A) % 4
  when 1
    p A ^ B
  when 2
    p A ^ 1
  when 3
    p A ^ 1 ^ B
  when 0
    p A
  end
end
