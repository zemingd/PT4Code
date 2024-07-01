package main

import (
  "fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
  
    tapCount := 1;
  	socketCount := a
  	for { 
      if  socketCount > b {
        break
      }
   		tapCount++
      	socketCount --
      	socketCount += a
   	}
  	fmt.Println(tapCount)
}
