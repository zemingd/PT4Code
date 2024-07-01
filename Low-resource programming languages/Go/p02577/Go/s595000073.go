package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scanf("%s", &n)

	ans := "No"
 	sum := 0
  	for v := range n{
    	sum += v
	}
    if sum % 9 == 0{
      	ans = "Yes"
    }
	fmt.Printf("%s\n", ans)
}
