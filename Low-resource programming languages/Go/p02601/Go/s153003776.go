package main

import "fmt"

func main() {
	a := 0
	b := 0
	c := 0
	k := 0

	fmt.Scanf("%d %d %d", &a, &b, &c)
	fmt.Scanf("%d", &k)

	for i := 0; i < k; i++ {
		if c <= b {
			c *= 2
		} else if b <= a {
			b *= 2
		} else {
			c *= 2
		}
		fmt.Println("a", a, "b", b, "c", c)

	}

	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
