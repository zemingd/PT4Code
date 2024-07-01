n = gets.to_i
nums = *(0..n).select{|num| num.to_s.include?("3") && num.to_s.include?("5") && num.to_s.include?("7")}
            .select{|num| !(num.to_s.include?("1") || num.to_s.include?("2") || num.to_s.include?("4") || num.to_s.include?("6") || num.to_s.include?("8") || num.to_s.include?("9") || num.to_s.include?("0"))}
p nums.count