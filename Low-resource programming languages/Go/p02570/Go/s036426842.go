package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scanf("%d %d %d", &d, &t, &s)

	i := d / s
	if d%s == 1 {
		i += 1
	}

	if i <= s {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
