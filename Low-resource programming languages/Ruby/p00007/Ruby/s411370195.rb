class Numeric
  def calc_debt(week)
    return case week
    when 0 then self
    else self.calc_debt(week - 1)./(1000).*(1.05).ceil.*(1000)
    end
  end
end

puts 100_000.calc_debt(gets.to_i)