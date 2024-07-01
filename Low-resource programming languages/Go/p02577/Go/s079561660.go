package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n string

	fmt.Scanf("%s", &n)

	var answer int = 0
	str_n := strings.Split(n, "")
	for _, str := range str_n {
		i, _ := strconv.Atoi(str)
		answer += i
	}

	if answer % 9 == 0 {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}