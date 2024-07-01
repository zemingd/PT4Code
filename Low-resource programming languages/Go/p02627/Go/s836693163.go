package main
 
import (
  "fmt"
  "sort"
)
 
func main(){
  var K, N int
  p:=[100]int{}
  fmt.Scan(&K)
  fmt.Scan(&N)
  for i:=0;i<N;i++{
    fmt.Scan(&p[i])
  }
  sort.Slice(p, func(i, j int) bool { return p[i] < p[j] })
  sum:=0
  for j:=0;j<K;j++ {
    sum+=p[j]
  }
  fmt.Println(sum)
 
}