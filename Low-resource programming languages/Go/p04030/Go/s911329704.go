package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)
	ans := make(map[int]int32, 0)
	for i, c := range s {
		if c == '0' || c == '1' {
			ans[i] = c
		} else {
			if i - 1 >= 0 {
				delete(ans, i-1)
			}
		}
	}
	for i := 0; i < len(s); i++ {
		if v, ok := ans[i]; ok {
			fmt.Printf("%c", v)
		}
	}
	fmt.Println("")
}
