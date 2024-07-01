package main

import (
	"fmt"
	"strconv"
	"strings"
)

func min(a string, b string) string {
	if a == b {
		return a
	}
	as := strings.Split(a, "")
	bs := strings.Split(b, "")
	if len(as) < len(bs) {
		for i, _ := range as {
			aInt, _ := strconv.Atoi(as[i])
			bInt, _ := strconv.Atoi(bs[i])
			if aInt < bInt {
				return a
			} else if aInt > bInt {
				return b
			} else {
				// 同じ場合
				continue
			}
		}
	} else {
		for i, _ := range bs {
			aInt, _ := strconv.Atoi(as[i])
			bInt, _ := strconv.Atoi(bs[i])
			if aInt < bInt {
				return a
			} else if aInt > bInt {
				return b
			} else {
				// 同じ場合
				continue
			}
		}
	}
	if len(as) < len(bs) {
		return a
	} else {
		return b
	}
}

func main() {
	var a, b int
	_, _ = fmt.Scan(&a)
	_, _ = fmt.Scan(&b)
	aStr := strconv.Itoa(a)
	bStr := strconv.Itoa(b)
	ab := ""
	for i := 0; i < b; i++ {
		ab += aStr
	}
	ba := ""
	for i := 0; i < a; i++ {
		ba += bStr
	}
	fmt.Println(min(ab, ba))
}