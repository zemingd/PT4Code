package main

import "fmt"

func main(){
  var s string
  fmt.Scanf("%s", &s)

  var max, count int
  for _, rune := range s{
    c := string(rune)
    if c == "R"{
      count++
    } else {
      count = 0
    }
    if max < count {
      max = count
    }
  }

  fmt.Println(max)

}