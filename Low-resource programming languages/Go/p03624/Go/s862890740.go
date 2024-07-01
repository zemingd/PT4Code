package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	flag := make([]int, 26)
	for _, a := range s {
		flag[int(a-'a')] = 1
	}
	for i, f := range flag {
		if f == 0 {
			fmt.Println(string('a' + rune(i)))
			return
		}
	}

	fmt.Println("None")
}
