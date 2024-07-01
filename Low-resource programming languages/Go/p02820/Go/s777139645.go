package main

import (
	"fmt"
	"strings"
)

func main() {
	var n,k,r,s,p int
	var t string
	fmt.Scan(&n,&k,&r,&s,&p,&t)


	var score = 0
	tslice := strings.Split(t,"")
	for i := 0; i < n; i++ {
		if i < k {
			switch tslice[i] {
			case "s":
				score += r
			case "p":
				score += s
			case "r":
				score += p
			}
		} else {
			if tslice[i] == tslice[i-k] {
				tslice[i] = "x"
			} else {
				switch tslice[i] {
				case "s":
					score += r
				case "p":
					score += s
				case "r":
					score += p
				}
			}
		}
	}
	fmt.Println(score)
}