package main

import (
  "fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
  
    tapCount := 1;
  	socketCount := a
  	for tapCount >= b { 
   		tapCount++
      	socketCount += a - 1
   	}
  	fmt.Println(tapCount)
}
