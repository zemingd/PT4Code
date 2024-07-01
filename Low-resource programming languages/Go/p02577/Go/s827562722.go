package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string

	fmt.Scanf("%s", &n)

	total := 0
	for i := 0; i < len(n); i++ {
		t, _ := strconv.Atoi(n[i : i+1])
		total = total + t
	}
	if total%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
