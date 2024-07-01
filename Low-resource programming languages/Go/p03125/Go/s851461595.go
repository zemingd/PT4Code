package main


import (
	"fmt"
	"strconv"
)

func main() {
	var a, b string
	fmt.Scan(&a)
	fmt.Scan(&b)

	fmt.Printf("%d\n", solve(a, b))
}

func solve(a, b string) int {
	ai, _ := strconv.Atoi(a)
	bi, _ := strconv.Atoi(b)
	if bi % ai == 0 {
		return ai + bi
	}else{
		return bi - ai
	}
}