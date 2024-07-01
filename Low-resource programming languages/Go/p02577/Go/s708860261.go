package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scanf("%s", &n)

	ans := "No"
 	sum := 0
  	for _, v := range n{
      	sum += int(v)-48
	}
    if sum % 9 == 0{
      	ans = "Yes"
    }
	fmt.Printf("%s\n", ans)
}
