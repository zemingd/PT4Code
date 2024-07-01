package main

import (
	"fmt"
	"strconv"
)


// bit全探索

func main() {
	var abcd string
	fmt.Scan(&abcd)

	var ans string
	s := split(abcd)
	for bit := 0; bit < (1 << (len(s)-1)); bit++ {
		num, _ := strconv.Atoi(s[0])
		sum := num
		ans = s[0]

		for i := 0; i < len(s) - 1; i++ {
			num, _ = strconv.Atoi(s[i+1])
			if bit >> 1 & 1 == 1 {
				sum += num
				ans += "+" + s[i+1]
			} else {
				sum -= num
				ans += "-" + s[i+1]
			}
		}
		if sum == 7 {
			ans += "=7"
			break
		}
	}
	fmt.Println(ans)
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
