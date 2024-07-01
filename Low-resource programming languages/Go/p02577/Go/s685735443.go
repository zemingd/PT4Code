package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string

	fmt.Scanf("%s", &n)

	convertedStrUint64, _ := strconv.ParseUint(n, 10, 64)

	mod := convertedStrUint64 % 9
	if mod == 0 {
		total := 0
		for i := 0; i < len(n); i++ {
			t, _ := strconv.Atoi(n[i : i+1])
			total = total + t
		}
		if total%9 == 0 {
			fmt.Println("Yes")
			return
		}
	}

	fmt.Println("No")
}
