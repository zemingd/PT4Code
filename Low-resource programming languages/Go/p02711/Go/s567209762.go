package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := strconv.Itoa(n)
	slice := strings.Split(s, "")
	len := len(slice)
	for i := 0; i < len; i++ {
		if slice[i] == "7" {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
