package main

import "fmt"

var m = map[string]int{
  "SUN": 7,
  "MON": 6,
  "TUE": 5,
  "WED": 4,
  "THU": 3,
  "FRI": 2,
  "SAT": 1,
}

func main() {
  var S string
  fmt.Scan(&S)
  fmt.Println(m[S])
}