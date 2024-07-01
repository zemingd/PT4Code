package main

import (
	"fmt"
	"strconv"
)

var count = 0

func main() {
	var n int
	fmt.Scan(&n)
	rec1(n, "")
	fmt.Println(count)
}

func rec1(max int, str string) {
	if len(str) > 0 {
		tmp, _ := strconv.Atoi(str)
		if tmp > max {
			return
		} else {
			t, f, s := 0, 0, 0
			for _, l := range str {
				ss := string(l)
				switch ss {
				case "3": t++
				case "5": f++
				case "7": s++
				}
			}
			if t > 0 && f > 0 && s > 0 {
				count++
			}
		}
	}
	rec1(max, str + "3")
	rec1(max, str + "5")
	rec1(max, str + "7")
}