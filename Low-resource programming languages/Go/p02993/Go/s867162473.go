package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	
    k := -1
	for i := 0; i < len(s); i++ {
      v,_ := strconv.Atoi(string(s[i]))
		if v == k {
			fmt.Println("Bad")
			return
		}
		k = v
	}
	fmt.Println("Good")
}