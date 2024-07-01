package main

import "fmt"

func main() {
	var P, Q, R int
	fmt.Scanf("%d %d %d", &P, &Q, &R)
	var min int
	min = P + Q
	if min > Q+R {
		min = Q + R
	}
	if min > P+R {
		min = P + R
	}
	fmt.Print(min)
}
