#coding: utf-8
STDOUT.sync = true

def sum(num)
  a = b = c = d = 10
  cnt = 0
  a.times { |a|
    b.times { |b|
      c.times { |c|
	    d.times { |d|
	      if (a + b + c + d) == num then
		    cnt += 1
		  end
        }
	  }
    }
  }
  return cnt
end

while num = gets.to_i do
  puts sum(num)
end