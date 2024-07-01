package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	sum := 0
	var b0 bool
	if S[0] == byte('0') {
		b0 = true
	}
	for i := 0; i < len(S); i++ {
		if b0 {
			if i%2 == 0 {
				if S[i] != byte('0') {
					sum++
				}
			} else {
				if S[i] != byte('1') {
					sum++
				}
			}
		} else {
			if i%2 == 0 {
				if S[i] != byte('1') {
					sum++
				}
			} else {
				if S[i] != byte('0') {
					sum++
				}
			}
		}
	}
	fmt.Println(sum)
}
