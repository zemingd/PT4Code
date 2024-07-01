while true
  a = gets
  break if a == nil
  n = a.to_i
y = 0
if n <= 36
    for a in 0..9 do
        if n <= a
            y += 1
            ;break
        end
        for b in 0..9 do
            if n <= a + b
                y += 1
                ;break
            end
           for c in 0..9 do
               if n <= a + b + c
                   y += 1
                   ;break
               end
              for d in 0..9 do
                  i = a + b + c + d
                  if n == i
                      y += 1
                  end
              end
           end
        end
    end
end
puts y
end

