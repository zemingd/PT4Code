DBG = !true
n = gets.to_i
a = []
for i in 0...n
  x,y,h = gets.split.map{|x| x.to_i}
  a << [x,y,h]
end

if DBG
  printf("n:%d\n", n)
  print a, "\n"
end

a.sort_by!{|e| e[2]}.reverse!

for cx in 0..100
  for cy in 0..100
    hhyp = -1
    ok = true
    for k in 0...n
      x,y,h = a[k]
      if hhyp == -1
        if h == 0
          print "err"
          exit
        else
          hhyp = h + (x-cx).abs + (y-cy).abs
          printf("x:%d y:%d h:%d hhyp:%d\n", x, y, h, hhyp) if DBG
        end
      else
        if h == 0
          if hhyp - (x-cx).abs - (y-cy).abs > 0
            ok = false
            print "breaking\n" if DBG
            break
          end
        else
          if hhyp - (x-cx).abs - (y-cy).abs != h
            ok = false
            printf("cx:%d cy:%d x:%d y:%d h:%d hh:%d breaking2\n", cx, cy, x, y, h, hhyp) if DBG
            break
          end
        end
      end
    end

    if ok
      printf("%d %d %d", cx, cy, hhyp)
      exit
    end
  end
end
printf("dead")
