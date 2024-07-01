package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var s string
	fmt.Scan(&s)

	ans := 999999999999999
	for i := 0; i <= len(s)-3; i++ {
		x := int(s[i]-'0')*100 + int(s[i+1]-'0')*10 + int(s[i+2]-'0')
		y := abs(x - 753)
		if y < ans {
			ans = y
		}
	}
	fmt.Println(ans)
}
