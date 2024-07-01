package main

import (
	"fmt"
)

func main() {
	var s, t string
	var ans int
	fmt.Scan(&s, &t)
	for index, key := range s {
		if string(key) != t[index:index+1] {
			ans += 1
		}
	}
	fmt.Println(ans)
}
