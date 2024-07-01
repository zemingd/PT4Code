package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s, t string
	fmt.Fscan(r, &s)
	fmt.Fscan(r, &t)

	index := -1
	for i := len(s) - len(t); i >= 0; i-- {
		target := s[i : i+len(t)]
		flg := true
		for j := 0; j < len(target); j++ {
			if string(target[j]) != "?" && target[j] != t[j] {
				flg = false
				break
			}
		}
		if flg {
			index = i
			break
		}
	}

	if index >= 0 {
		ans := strings.Replace(s[0:index], "?", "a", -1) + t + strings.Replace(s[index+len(t):], "?", "a", -1)
		fmt.Println(ans)
	} else {
		fmt.Println("UNRESTORABLE")
	}
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
