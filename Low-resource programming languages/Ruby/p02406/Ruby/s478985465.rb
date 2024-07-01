n = gets.chomp.to_i
i = 1

def check_mod_10(arg)
  @result += " #{i}" if arg % 10 == 3
end

@result = ""
while i <= n
  x = i
  if x % 3 == 0
    @result += " #{i}"
  else
    begin
      if x % 10 == 3
        @result += " #{i}"
        break
      end
    end while (x = x / 10) > 0
  end
  i += 1
end

puts @result

