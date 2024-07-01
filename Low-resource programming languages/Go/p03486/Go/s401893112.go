package main

import (
	"bytes"
	"fmt"
	"sort"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	x, y := []byte(s), []byte(t)
	sort.Slice(x, func(i, j int) bool { return x[i] < x[j] })
	sort.Slice(y, func(i, j int) bool { return y[i] > y[j] })
	if bytes.Compare(x, y) == -1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
