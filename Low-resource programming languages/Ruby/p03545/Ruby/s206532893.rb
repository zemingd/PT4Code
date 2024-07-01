A,B,C,D = gets.chars.map(&:to_i)

['+','-'].each do |o1|
  ['+','-'].each do |o2|
    ['+','-'].each do |o3|
      if eval("A #{o1} B #{o2} C #{o3} D") == 7
        puts "#{A}#{o1}#{B}#{o2}#{C}#{o3}#{D}=7"
        exit
      end
    end
  end
end