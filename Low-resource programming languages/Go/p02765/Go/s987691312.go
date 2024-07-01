package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n, &r)

	var ans int
	if n >= 10 {
		ans = r
	} else {
		ans = r+1000-100*n
	}
	fmt.Println(ans)
}
