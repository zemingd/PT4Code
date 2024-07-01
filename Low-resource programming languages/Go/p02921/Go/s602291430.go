package main

import "fmt"

func main() {
  var str1, str2 string
  fmt.Scanf("%s", &str1)
  fmt.Scanf("%s", &str2)
  count := 0
  for i := 0; i < 3; i++ {
    if str1[i] == str2[i] {
      count++
    }
  }
  fmt.Println(count)
}