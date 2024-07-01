package main

import (
  "fmt"
)

func main() {
  var n int
  var d [] int
  var tmp int
  fmt.Scan(&n)
  for i:=0; i<n; i++ {
	fmt.Scan(&tmp)
	d = append(d,tmp)
  }
  count := 0
  for i:=0; i<n; i++ {
	if d[i] != 0 {
	  count++
	  for j:=i+1; j<n; j++ {
		if d[j] == d[i] {
		  d[j] = 0
		}
	  }
	}
  }
  fmt.Println(count)
}
