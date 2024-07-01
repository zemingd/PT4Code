package main

import (
	"fmt"
	//"strconv"
)

func main() {
	var A,B,C int
	fmt.Scanf("%d %d %d",&A,&B,&C)
  if A==B || A==C || B==C{
    if A==B&&B==C{
      fmt.Print("No")
    }else{
     fmt.Print("Yes")
    }
  }else{
    fmt.Print("No")
  }
}