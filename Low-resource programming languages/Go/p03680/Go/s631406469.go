package main

import (
    "fmt"
)


var button []int

func main() {
  var N int
  var a int
  var next  int = 0
  var count int = 1 

  fmt.Scan(&N)

  button = make([]int,N)

    for i := 0; i < N; i++ {
      fmt.Scan(&a)
      button[i] = a
    }

//    for i:= 0; i < N; i++ {
//      fmt.Printf("button[%d]=%d\n",i,button[i])
//    }


    for i := 0; i < N ; i++{
      //fmt.Println("i:",i)
      next = button[next]-1
      if next == 1 {
       break
      } else {
        count++
      }
    }

    if next == 1 {
      fmt.Println(count)
    } else {
      fmt.Println(-1)
    }
}
