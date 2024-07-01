package main

import "fmt"

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	onecnt := 0
	var last byte
	for i := 0; i < len(s); i++ {
		if s[i] != '1' {
			last = s[i]
			break
		} else {
			onecnt++
		}
	}

    if onecnt == 0 || onecnt < k {
		fmt.Println(string(last))
	} else {
		fmt.Println("1")
	}
}
