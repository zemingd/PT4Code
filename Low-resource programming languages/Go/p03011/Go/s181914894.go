package main

import(
  "fmt"
  "sort"
)

func main(){
  var(
    P, Q, R int
  )
  fmt.Scanf("%d %d %d", &P, &Q, &R)
  
  plane :=[3]int{P, Q, R}
  sort.Ints(plane)
  
  fmt.Printf("%d",plane[0]+plane[1])
}
  