package main

import (
	"fmt"
	"strings"
)

func main() {
	var R string
	fmt.Scan(&R)
	flag := true
	flag = flag && R[0] == 'A'
	idx := strings.Index(R[2:len(R)-1], "C")
	flag = flag && (idx != -1)
	for i := range R {
		if i == 0 || i == idx+2 {
			continue
		}
		if R[i:i+1] != strings.ToLower(R[i:i+1]) {
			flag = false
		}
	}
	if flag {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
