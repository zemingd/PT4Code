package main

import (
	"fmt"
)

func main() {
	var S string
	fmt.Scan(&S)

	ans := "2018/01/" + S[8:]

	fmt.Println(ans)
}