package main

import "fmt"

func main(){
  var s int
  fmt.Scan(&s)
  fmt.Printf("%d:%d:%d\n" ,s / 3600, s % 3600 / 60, s % 60)
}

