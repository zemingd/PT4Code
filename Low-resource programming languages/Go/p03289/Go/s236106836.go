package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	small := "abcdefghijklmnopqrstuvwxyz"
	ss := strings.Split(s,"")

	if ss[0] == "A" && strings.Index(small,ss[1]) >= 0{
		substr := string([]rune(s)[2:len(s)])
		substrs := strings.Split(substr,"")
		count := 0
		for k,v := range substrs {
			if v == "C" {
				if k == len(substrs)-1 {
					count += 2
				} else {
					count++
				}
			} else if strings.Index(small,v) < 0{
				count += 2
			}
		}
		if count == 1 {
			fmt.Println("AC")
			return
		}
	}
	fmt.Println("WA")
}