package main

import "fmt"

func main() {
	var i int
	var i1, i2, ans int
	fmt.Scan(&i1, &i2)

	for i = 0; i < 2; i++ {
		if i1 < i2 {
			ans += i2
			i2 += -1
		} else {
			ans += i1
			i1 += -1
		}
	}
	fmt.Print(ans)
}