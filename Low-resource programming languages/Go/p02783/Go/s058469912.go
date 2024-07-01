package main

import "fmt"

var (
	h, a, ans int
)

func main() {
	fmt.Scan(&h)
	fmt.Scan(&a)
	for h > 0 {
		ans++
		h -= a
	}
	fmt.Printlna(ans)
}