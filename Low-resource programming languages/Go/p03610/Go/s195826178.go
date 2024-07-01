package main

import (
	"fmt"
)

func main() {
	var s, res string
	fmt.Scan(&s)

	for i:=0; i<len(s); i++ {
		if (i+1)%2 == 1 {
			res += string(s[i])
		}
	}

	fmt.Println(res)
}