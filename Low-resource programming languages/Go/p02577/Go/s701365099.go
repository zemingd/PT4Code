package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n string

	fmt.Scanf("%s", &n)

	N := strings.Split(n, "")
	sum := 0
	for _, i := range N {
		j, _ := strconv.Atoi(i)
		sum += j
	}

	if sum%9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
