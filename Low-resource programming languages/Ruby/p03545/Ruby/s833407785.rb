txt = gets.split('').join('#')
operators = ['+', '-', '*', '/']

x = nil
catch(:foo) do
  operators.each do |o1|
    unless txt[2] == '0' && o1 == '/'
      txt[1] = o1
    else
      next
    end
    operators.each do |o2|
      unless txt[4] == '0' && o2 == '/'
        txt[3] = o2
      else
        next
      end
      operators.each do |o3|
        unless txt[6] == '0' && o3 == '/'
          txt[5] = o3
        else
          next
        end
        if eval(txt) == 7
          x = txt
          throw :foo
        end
      end
    end
  end
end
puts "#{x}=7"