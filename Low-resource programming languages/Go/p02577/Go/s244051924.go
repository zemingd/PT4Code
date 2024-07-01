package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n string
	fmt.Scan(&n)

	ns := split(n)
	sum := 0
	for i := 0 ;i < len(ns); i++ {
		a, _ := strconv.Atoi(ns[i])
		sum +=  a
	}

	if sum % 9 == 0 {
		fmt.Println("Yes")
		return

	}
	fmt.Println("No")
}


func Sum(arr ...int) (sum int) {
	for _, x := range arr {
		sum += x
	}
	return
}
func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
