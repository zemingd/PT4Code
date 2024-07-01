package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	var ans int
	for _, v := range n {
		if v == 'R' {
			ans += 1
		} else {
			ans = 0
		}
	}
	fmt.Println(ans)
}
