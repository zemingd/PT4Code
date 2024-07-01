package main

import "fmt"

func main() {
	var h, w, ans int64
	fmt.Scan(&h, &w)
	if w == 1 && h == 1 {
		ans = 1
	} else {
		ans = ((w+1)/2)*((h+1)/2) + (w/2)*(h/2)
	}
	fmt.Println(ans)
}
