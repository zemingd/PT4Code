#coding: utf-8
STDOUT.sync = true

while num = gets.to_i do
  cnt = 0
  sum = 0
  for a in 0..9 do
    for b in 0..9 do
	  for c in 0..9 do
	    for d in 0..9 do
		  sum = a + b + c + d
		  if sum == num then
		    cnt = cnt + 1
		  end
		end
	  end
	end
  end
  puts cnt
end