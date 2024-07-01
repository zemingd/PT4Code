package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var res string
	for i, c := range s {
		if (i+1)%2 != 0 {
			res += string(c)
		}
	}
	fmt.Println(res)
}
