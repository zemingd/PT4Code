package main

import "fmt"


func main() {
	var k, s string
 	fmt.Scan(&k)
    fmt.Scan(&s)
  
    if len(k) >= len(s) {
      fmt.Println(s)
    }else {
      fmt.Println(s[:len(k)] + "...")
    }
}