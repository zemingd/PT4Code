package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	for i := 1000; ; i += 1000 {

		if n > i {
			continue
		}

		fmt.Println(i - n)
		break
	}
}
