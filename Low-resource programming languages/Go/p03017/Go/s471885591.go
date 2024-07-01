package main

import (
	"fmt"
)

func main() {
	var n int
	var a int
	var b int
	var c int
	var d int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	fmt.Scan(&s)

	ret := "No"
	if c < d {
		ret = "Yes"

	} else {

		dotThreeFlg := false
		sharpTwoFlg := false

		dotCount := 0
		sharpCount := 0
		for i := b - 2; i < c; i++ {
			if s[i] == '.' {
				dotCount++
				if dotCount >= 3 {
					if i+1 == c {
						if i > d {
							dotThreeFlg = true
						}
					}
				}
				sharpCount = 0
			} else {
				sharpCount++
				if sharpCount >= 2 {
					sharpTwoFlg = true
					break
				}
				dotCount = 0
			}
		}

		if !sharpTwoFlg && dotThreeFlg {
			ret = "Yes"
		}
	}

	fmt.Println(ret)
}
