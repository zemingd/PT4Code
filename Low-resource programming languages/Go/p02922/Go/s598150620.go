package main

import (
	"fmt"
)

func main() {
	var n, m  int
	fmt.Scan(&n, &m)
	total := n
	ans := 1
	for {
		if total  >= m {
			 fmt.Println(ans)
			 return
		}
		ans++
		total += n-1
	}
}
