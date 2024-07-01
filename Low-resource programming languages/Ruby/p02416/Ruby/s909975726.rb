while (num = gets.to_s)!="0\n" do
    p num.chars.map(&:to_i).inject(:+)
end
