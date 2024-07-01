package main

import(
	"fmt"
	"regexp"
)


func main(){
var a string
fmt.Scan(&a)
if check_regexp(`[A-Z]`,"a"){
  fmt.Println("A")
}
if check_regexp(`[a-z]`,"a"){
  fmt.Println("a")
}
}