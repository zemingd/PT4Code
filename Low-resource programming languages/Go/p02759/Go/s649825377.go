package main

import (
	"fmt"
  //"sort"
	//"strconv"
)

func main() {
  var N int
  fmt.Scanf("%d",&N);
  if N%2==0{
    fmt.Print(N/2)
  }else{
    fmt.Print(1+N/2)
  }
}