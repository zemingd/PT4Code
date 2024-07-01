package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ss := []rune(s)
	ts := []rune(t)
	len := len(ss)
	for i := 0; i < len; i++ {
		flag := true
		for j := 0; j < len; j++ {
			if ss[j] != ts[j] {
				flag = false
				break
			}
		}
		if flag == true {
			fmt.Println("Yes")
			return
		} else {
			first := ss[0]
			for j := 0; j < len-1; j++ {
				ss[j] = ss[j+1]
			}
			ss[len-1] = first
		}
	}
	fmt.Println("No")
}
