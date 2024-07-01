package main

import "fmt"

func main(){
	var N, T int
	c := 0x7fffffff
	t := 0x7fffffff

	fmt.Scan(&N, &T)
	for N > 0 {
		var temp1 int
		fmt.Scan(&temp1, &t)
		if temp1 < c && t <= T {
			c = temp1
		}
		N--
	}
	if c == 0x7fffffff {
		fmt.Println("TLE")
	} else {
		fmt.Println(c)
	}
}