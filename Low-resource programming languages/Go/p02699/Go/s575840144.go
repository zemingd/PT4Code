package main


import "fmt"

func main(){
  var s, w int
  fmt.Scanf("%d %d", &s, &w)
  
  if w < s{
    fmt.Println("safe")
  }else{
    fmt.Println("unsafe")
  }

}