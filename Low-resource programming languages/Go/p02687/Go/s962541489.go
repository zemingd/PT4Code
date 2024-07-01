package main

import "fmt"


func main() {
	var s string
  	fmt.Scan(&s)
  
    if s == "ABC" {
      fmt.Println("ARC")
    } else if s == "ARC" {
      fmt.Println("ABC")
    }
}