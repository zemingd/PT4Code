def check_num
  @x = @i
  if ( @x % 3 == 0 ) then
    print " " + @i
    end_check_num()
  else
    include_3()
  end
end

def include_3
  if @x % 10 == 3 then
    print " " + @i
    end_check_num()
  else
    @x /= 10
    if @x != 0 then
      include_3 
    else 
      end_check_num
    end
  end
  
end

def end_check_num
  if ++@i <= @n then
    check_num
  else
    puts ""
  end
end

@n = gets.chomp.to_i
@i = 1
check_num()