package main

import "fmt"

func main() {
  var ab, bc int
  fmt.Scanf("%d %d %d", &ab, &bc)

  answer := ab * bc / 2
  fmt.Println(answer)
}
