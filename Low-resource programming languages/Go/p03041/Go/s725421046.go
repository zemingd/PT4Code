package main

import (
	"fmt"
	"strings"
)

func main() {
	var n,k int
	var s string
	fmt.Scan(&n,&k,&s)

	ss := strings.Split(s,"")
	ss[k-1] = strings.ToLower(ss[k-1])

	fmt.Println(strings.Join(ss,""))
}