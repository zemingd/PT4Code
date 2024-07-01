package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var str [3]string

	for i := 0; i < 3; i++ {
		fmt.Scan(&str[i])
	}
	num, _ := strconv.Atoi(strings.Join(str[:], ""))
	if num%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}