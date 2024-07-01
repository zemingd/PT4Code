require "prime"

x = readline.to_i

loop {
  if x.prime?
    p x
    break
  end

  x += 1
}
