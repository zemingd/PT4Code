package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scanf("%d %d %d", &d, &t, &s)

	i := d / s
	if d%s != 0 {
		i += 1
	}

	if i <= t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
