txt = gets.split('').join('#')
operators = ['+', '-', '*', '/']

x = nil
catch(:foo) do
  operators.each do |o1|
    operators.each do |o2|
      operators.each do |o3|
        txt[1] = o1
        txt[3] = o2
        txt[5] = o3
        if eval(txt) == 7
          x = txt
          throw :foo
        end

      end
    end
  end
end
puts "#{x}=7"