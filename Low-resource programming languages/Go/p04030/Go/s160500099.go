package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	ret := ""
	for _, v := range s {
		if v == '0' || v == '1' {
			ret += string(v)
		}
		if v == 'B' && len(ret) > 0 {
			ret = ret[:len(ret)-1]
		}
	}
	fmt.Println(ret)
}
