package main

import "fmt"

func main() {
	// input
	var tmp string
	fmt.Scan(&tmp)

	// configuration
	count := 0
	ans := 0

	// check
	for i := 0; i < len(tmp); i++ {
		if string(tmp[i]) == "R" {
			count++
			ans = count
		} else {
			ans = count
			count = 0
		}
	}

	// output
	fmt.Println(ans)

}
