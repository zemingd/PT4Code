// ABC085 B - Kagami Mochi

package main

import (
    "fmt"
)

var d []int

func main() {
  var N int
  var In int
  var max int
  var presize int
  var maxnum int
  var stage int

  fmt.Scan(&N)

  d = make([]int,N)

  for i := 0; i < N; i++ {
    fmt.Scan(&In)
    d[i] = In
  }

//  for i := 0; i < N; i++ {
//    fmt.Printf("init:d[%d]=%d\n",i,d[i])
//  }

  stage = 0
  presize = 101
  for i := 0; i < N; i++ {
    max   = 0
    for j := 0; j < N; j++ {
      if d[j] > max {
       max = d[j]
       maxnum = j
      }
    }


    if presize > max { 
      presize = max
      d[maxnum] = 0
      stage++
    } else if presize == max {
      d[maxnum] = 0
    }

//    fmt.Printf("max:%d ",max)
//    fmt.Printf("stage:%d\n",stage)



  }

//  for i := 0; i < N; i++ {
//    fmt.Printf("last:d[%d]=%d\n",i,d[i])
//  }

  fmt.Println(stage)
}
