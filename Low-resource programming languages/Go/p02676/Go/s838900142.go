package main

import "fmt"

func main() {
	var k int
	var s string
	fmt.Scan(&k)
	fmt.Scan(&s)
	if len(s) <= k {
		fmt.Println(s)
	} else {
		for i, ss := range s {
			if i >= k {
				break
			}
			fmt.Printf("%s", string(ss))
		}
		fmt.Println("...")
	}
}
