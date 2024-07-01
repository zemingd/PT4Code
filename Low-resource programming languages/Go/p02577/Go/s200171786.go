package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n string
	fmt.Scan(&n)

	data := strings.Split(n, "")
	var ans int
	for _, i := range data {
		s, _ := strconv.Atoi(i)
		ans = ans + s
	}
	if ans%9 == 0 {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}
