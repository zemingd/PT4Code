package main

import "fmt"

func main() {
	var k, s string
  
  	fmt.Scan(&k, &s)
  	if len(k) >= len(s) {
    	fmt.Println(s)
    } else if len(k) < len(s) {
      	fmt.Println(s[:len(k)-1] + "...")
    }
}