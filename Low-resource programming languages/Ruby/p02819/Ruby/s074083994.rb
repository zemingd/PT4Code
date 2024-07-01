require "prime"

x = readline.to_i

x.upto(100_000) {|e|
  if e.prime?
    p e
    exit
  end
}

