#!/usr/bin/ruby

N = gets.chomp.to_i

$table = [
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
[],
]

1.upto(N){|i|
  a_i = gets.chomp.to_i
  1.upto(a_i){|j|
    x_i_j,  y_i_j = gets.chomp.split(" ").map(&:to_i)
    $table[i][j] = [x_i_j, y_i_j]
    #puts "table[#{i}][#{j}] = (#{x_i_j}, #{y_i_j})"
  }
}

# people = [dummy, 1,0,0...]
def isGood( people )
  i = 1;
  while i < people.length
    if people[i] == 1
      #puts"people[#{i}] = 1"
      1.upto($table[i].length-1){|j|
        #puts "#{i}, #{j}"
        t = $table[i][j]
        #puts "table[#{i}]= #{t.class}"
        #puts t[0]
        x, y = t
        #puts "x, people[x],y = #{x}, #{people[x]}, #{y}"
        return false if people[x] != y
      }

    end
    i+=1
  end

  return true
end

N.downto(0){|n|
  arr= []
  1.upto(n){|i|
    arr.push(1)
  }
  (n+1).upto(N){|i|
    arr.push(0)
  }
  combi = arr.permutation(N).to_a.uniq
  combi.each{|people|
    people.unshift("d")
    #puts"people = #{people.inspect}"
    if true == isGood(people)
      puts n
      exit
    end
  }
}

puts 0
