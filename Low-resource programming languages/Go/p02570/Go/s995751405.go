package main

import "fmt"

func main(){
  l := make([]int, 3)
  fmt.Scanln(&l[0], &l[1], &l[2])
  cal := l[1] * l[2]
  if l[0] <= cal {
    fmt.Println("Yes")
  }else {
    fmt.Println("No")
  }
}
