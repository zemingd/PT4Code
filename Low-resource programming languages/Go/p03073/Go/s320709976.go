package main

import (
	"fmt"
)

func main() {
	var (
		s string
	)
	fmt.Scan(&s)

	tmp_odd := 0
	tmp_even := 0
	for i := 0; i < len(s); i++ {
		if i%2 == 0 {
			if s[i] == '0' {
				tmp_odd++
			} else {
				tmp_even++
			}
		} else {
			if s[i] == '1' {
				tmp_odd++
			} else {
				tmp_even++
			}
		}
	}
	if tmp_odd > tmp_even {
		fmt.Println(tmp_even)
	} else {
		fmt.Println(tmp_odd)
	}
}
