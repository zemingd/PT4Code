package main

import "fmt"

func main() {
	var n int
	var s1, s2, ans string
	fmt.Scan(&n)
	fmt.Scan(&s1)
	fmt.Scan(&s2)
	for i := 0; i < n; i++ {
		var string1 = string(s1[i])
		var string2 = string(s2[i])
		ans += string1 + string2
	}
	fmt.Println(ans)
}
