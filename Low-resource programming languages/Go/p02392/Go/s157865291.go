package main

import "fmt"

func main ()  {
  a := [3]int{}
  b := true
  for i := range a {
    fmt.Scan(&a[i])
  }

  for i := range a {
    if len(a) <= i + 1 {break}
    b = b && (a[i] < a[i+1])
  }

  if b {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
