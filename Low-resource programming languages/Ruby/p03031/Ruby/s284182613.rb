n, m = gets.split(" ").map(&:to_i)
lights = []
m.times do
  lights.push(gets.split(" ").map(&:to_i))
end

ps = gets.split(" ").map(&:to_i)

lights.each do |li|
  li.shift(1)
end
# puts lights

switches = []

10.times do
  switches.push(false)
end

sum = 0
true_count = 0
judge = false
2.times do |index1|
  2.times do |index2|
    2.times do |index3|
      2.times do |index4|
        2.times do |index5|
          2.times do |index6|
            2.times do |index7|
              2.times do |index8|
                2.times do |index9|
                  2.times do |index10|
                    if index1 == 0
                      switches[0] = true
                    else
                      switches[0] = false
                    end
                    if index2 == 0
                      switches[1] = true
                    else
                      switches[1] = false
                    end
                    if index3 == 0
                      switches[2] = true
                    else
                      switches[2] = false
                    end
                    if index4 == 0
                      switches[3] = true
                    else
                      switches[3] = false
                    end
                    if index5 == 0
                      switches[4] = true
                    else
                      switches[4] = false
                    end
                    if index6 == 0
                      switches[5] = true
                    else
                      switches[5] = false
                    end
                    if index7 == 0
                      switches[6] = true
                    else
                      switches[6] = false
                    end
                    if index8 == 0
                      switches[7] = true
                    else
                      switches[7] = false
                    end
                    if index9 == 0
                      switches[8] = true
                    else
                      switches[8] = false
                    end
                    if index10 == 0
                      switches[9] = true
                    else
                      switches[9] = false
                    end
                    lights.each_with_index do |light, l_index|
                      judge = true
                      light.each do |l|
                        if switches[l] == true
                          true_count += 1
                          # puts "plus"
                        end
                      end
                      if true_count % 2 == 0 && ps[l_index] == 1
                        judge = false
                      elsif true_count % 2 == 1 && ps[l_index] == 0
                        judge = false
                      end
                    end
                    if judge == true
                      sum += 1
                    end
                    true_count = 0
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

deduction = 10 - n + 1

puts sum / (2 ** deduction)