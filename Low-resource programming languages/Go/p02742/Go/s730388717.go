package main

import "fmt"

func main() {
	var h, w, ans int
	fmt.Scan(&h, &w)
	if w%2 == 0 {
		ans = w / 2 * h
	} else {
		ans = (w/2+1)*((h+1)/2) + w/2*h/2
	}
	fmt.Println(ans)
}
