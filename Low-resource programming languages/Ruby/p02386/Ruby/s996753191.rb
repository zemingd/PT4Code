class Dice
  attr_reader :u, :f, :r, :l, :b, :d
  def initialize(line)
    @u, @f, @r, @l, @b, @d = line.split.map(&:to_i)
  end
  def rot(direc)
    case direc
    when "E";
      @u, @l, @d, @r = @l, @d, @r, @u
    when "N";
      @u, @f, @d, @b = @f, @d, @b, @u
    when "S";
      @u, @f, @d, @b = @b, @u, @f, @d
    when "W";
      @u, @l, @d, @r = @r, @u, @l, @d
    when "Z";
      @f, @r, @b, @l = @r, @b, @l, @f
    end
  end
  def dispUp
    printf "%d\n", @u
  end
  def arr
    {:u=>u, :f =>f, :r=>r, :l=>l, :b=>b, :d=>d}
  end
  def out
    return sprintf "%d %d %d %d %d %d", u, f, r, l, b, d
  end
  def diceMatch(dice2)
    dice2.arr.each{|key, val|
      if self.u == val then
        d2 = dice2.clone
        k = sprintf "%s", key
        case k
        when "d"; d2.rot("N"); d2.rot("N");
        when "f"; d2.rot("N");
        when "b"; d2.rot("S");
        when "l"; d2.rot("E");
        when "r"; d2.rot("W");
        end
        4.times do
          if self.out == d2.out then
            return "Yes"
          end
          d2.rot("Z")
        end
      end
    }
    return "No"
  end
end

n = gets.to_i
dice = Array.new(n)
i = 0
n.times{
  dice[i] = Dice.new(gets.chomp)
  for j in 0..i-1
    if dice[i].diceMatch(dice[j]) == "Yes" then
      printf "No\n"
      exit
    end
  end
  i += 1
}
printf "Yes\n"