package main


import (
  "fmt"
)

func main(){
  var N int
  fmt.Scanf("%d", &N)
  
  p := N / 2
  if N % 2 == 1 {
    	p++
  }
  fmt.Println(p)
}