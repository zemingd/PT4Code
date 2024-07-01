package main

import (
	"fmt"
)

func main() {
	var src, dest string
	fmt.Scan(&src, &dest)
	len := len(src)

	ans := "No"
	for i := 0; i < len; i++ {
		last := src[len-1:]
		src = last + src[:len-1]
		if src == dest {
			ans = "Yes"
			break
		}
	}
	fmt.Println(ans)
}
