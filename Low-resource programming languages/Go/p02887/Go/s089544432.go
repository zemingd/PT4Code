package main

import "fmt"

func main() {
	var n int
	_, _ = fmt.Scan(&n)
	var str string
	_, _ = fmt.Scan(&str)
	str += "_"
	ans := 0
	for i := 0; i < len(str) - 1; i++ {
		if str[i] == str[i + 1] {
			ans ++
		}
	}
	fmt.Println(ans)
}