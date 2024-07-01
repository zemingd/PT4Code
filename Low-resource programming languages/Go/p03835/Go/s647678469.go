package main

import (
	"fmt"
)

var (k,x  int)
func main() {
  fmt.Scan(&k,&x)
  
  
  res := 0
  for i:=0;i <=k; i++ {
  	if x - k > 2 *k {
  		continue
  	}
  	for j :=0; j <= k;j++ {
  		if x- k - j > k {
  			continue
  		}
  			res += 1
  	}
  
  }

  fmt.Println(res)
}
