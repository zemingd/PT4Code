package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		N     int
		color string
	)
	count := 0
	fmt.Scan(&N, &color)
	str := strings.Split(color, "")
	m := make(map[string]struct{})
	for _, ele := range str {
		m[ele] = struct{}{}
	}
	struniq := []string{}
	for i := range m {
		struniq = append(struniq, i)
	}
	if len(struniq) == 1 {
		count = 1
	} else {
		for i := 0; i < N; {
			if i+1 == N {
				count++
				break
			}
			for j := i + 1; j <= N; j++ {
				if str[i] != str[j] {
					count++
					i = j
					break
				}
			}
		}
	}
	fmt.Println(count)
}