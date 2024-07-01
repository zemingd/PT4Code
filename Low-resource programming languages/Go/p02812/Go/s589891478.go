package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	count := 0
	for i := 0; i < n-2; i++ {
		if string(s[i]) == "A" {
			if string(s[i+1]) == "B" {
				if string(s[i+2]) == "C" {
					count++
				}
			}
		}

	}
	fmt.Println(count)

}
