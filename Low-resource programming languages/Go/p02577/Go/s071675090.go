package main

import "fmt"

func main() {
 var number string
 sum := 0
 fmt.Scanf("%s", &number)
  
  for _, c := range number {
    sum += int(c - '0')
  }
  
  if sum % 9 == 0 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}