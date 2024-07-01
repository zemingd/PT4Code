while line = gets
  a = line.split(" ")
  a[0] = a[0].to_i
  a[1] = a[1].to_i
  a[2] = a[2].to_i
  if a[0]==-1 && a[1] == -1 && a[2] == -1
    break
  end
  if a[0] == -1 || a[1] == -1
    puts "F"
  else
    if a[0] + a[1] >= 80
      puts "A"
    else
      if a[0] + a[1] >= 65
        puts "B" 
      else
        if a[0] + a[1] >= 50 
          puts "C"
        else
          if a[0] + a[1] >= 30
            if a[2] >= 50
              puts "C"
            else
              puts "D"
            end
          else
            puts "F"
          end
        end
      end
    end
  end
end