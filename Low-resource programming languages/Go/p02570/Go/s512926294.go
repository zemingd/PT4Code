package main 

import "fmt"

var d, t, s int

func main() {
	fmt.Scan(&d, &t, &s)
	ans := "No"
	if d / s <= t {
		ans = "Yes"
	}
	fmt.Println(ans)
}