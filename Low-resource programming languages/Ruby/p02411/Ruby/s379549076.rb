  scores = readlines
  scores.each do |score|

    texam,kexam,sexam = score.split.map(&:to_i)

    break if (texam == -1) && (kexam == -1) && (sexam == -1)
      exam = texam + kexam

      if (texam == -1) && (kexam == -1)
        puts "F"

      elsif exam >= 80
        puts "A"

      elsif exam >= 65 && exam < 80
        puts "B"

      elsif exam >= 50 && exam < 65
        puts "C"
        
      elsif exam >= 30 && exam < 50

        if sexam >= 50
          puts "C"
        else
          puts "D"
        end

      elsif texam + kexam <= 29
        puts "F"
      end

  end

