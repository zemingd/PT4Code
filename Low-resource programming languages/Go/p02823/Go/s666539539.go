package main

import "fmt"

func plas(i int) int {
	return i + 1
}
func minus(i int) int {
	return i - 1
}
func main() {
	var n, a, b, ans int
	fmt.Scan(&n, &a, &b)
	//if b-a > 1 {
	if (b-a)%2 == 0 {
		ans = (b - a) / 2
	}else{
		k := a - 1
		j := n - b
		if k < j {
			ans = b - 1
		} else {
			ans = n - a
		}
  }
  fmt.Println(ans)
}