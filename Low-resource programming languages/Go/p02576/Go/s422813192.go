package main

import(
  "fmt"
)

func main() {
  reader := bufio.NewReader(os.Stdin)
  var x, y, z int
  fmt.Scanf("%d %d %d", x, y, z)
  sum := (x/y) * z
  if x%y > 0 {
    sum += z
  }
  
  fmt.Println(sum)
  return
}