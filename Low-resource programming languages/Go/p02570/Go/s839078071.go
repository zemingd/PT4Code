package main

import "fmt"

func main() {
	var d, t, s int
	fmt.Scan(&d, &t, &s)
	if (d%s ==0 && d/s <= t) || d/s+1 <= t {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
