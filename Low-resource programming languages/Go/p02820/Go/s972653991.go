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
			count(tslice,i,score,r,s,p)
		} else {
			if tslice[i] == tslice[i-k] {
				tslice[i] = "x"
			} else {
				count(tslice,i,score,r,s,p)
			}
		}
	}
	fmt.Println(score)
}

func count(t []string,i,score,r,s,p int) {
	switch string(t[i]) {
	case "s":
		score += r
	case "p":
		score += s
	case "r":
		score += p
	}
	return
}