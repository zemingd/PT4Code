package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	d := 2
	ans := 0

	for d*d <= n {
		if n%d != 0 {
			d++
			continue
		}
		z := d
		for n%z == 0 {
			n /= z
			z *= d
			ans++
		}
		for n%d == 0 {
			n /= d
		}
	}
	if n != 1 {
		ans++
	}
	fmt.Println(ans)
}
