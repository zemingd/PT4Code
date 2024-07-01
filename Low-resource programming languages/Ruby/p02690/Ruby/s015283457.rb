def f i
  (-1000..1000).each do |a|
    (-1000..1000).each do |b|
      if a**5 - b**5 == i
        return [a, b]
      end
    end
  end
end
puts f(gets.to_i).join(" ")