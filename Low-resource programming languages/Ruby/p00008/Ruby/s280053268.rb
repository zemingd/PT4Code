#encoding:utf-8
numbers = []

while true
 number = gets.chomp
 if number == ''
  break
 end
 numbers.push number.to_i
end

def count_pattern integer
 count = 0
 a = 0
 while a < 10
  b = 0
  while b < 10
   c = 0
   while c < 10
    d = 0
    while d < 10
     if a + b + c + d == integer
      count += 1
     end
     d += 1
    end
    c += 1
   end
   b += 1
  end
  a += 1
 end
 puts count
end

i = 0
while i < numbers.length
 count_pattern numbers[i]
 i += 1
end