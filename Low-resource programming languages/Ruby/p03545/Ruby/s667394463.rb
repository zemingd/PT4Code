def s()
  gets().chomp
end
def i()
  gets.to_i
end
def li()
  gets.split.map(&:to_i)
end
def ili()
  n = gets.to_i
  as = gets.split.map(&:to_i)
  [n, as]
end

def calc(num, ope)
  first=num[0]
  3.times{|i|
    if ope[i] == "+"
      first += num[i+1]
    elsif ope[i] == "-"
      first -= num[i+1]
    end
  }
  first.to_i
end

num = s().split("").map(&:to_f)
ope = ["+", "-"]
2.times{|i|
  2.times{|j|
    2.times{|k|
      if calc(num, [ope[i], ope[j], ope[k]]) == 7
        res = num[0].to_i.to_s
        res += ope[i] + num[1].to_i.to_s
        res += ope[j] + num[2].to_i.to_s
        res += ope[k] + num[3].to_i.to_s
        puts res+"=7"
        exit
      end
    }
  }
}
