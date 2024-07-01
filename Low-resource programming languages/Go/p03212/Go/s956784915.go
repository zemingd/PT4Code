package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	ct := 0
	check := func(n int) bool {
		a, b, c := false, false, false
		for i := n; i > 0; i /= 10 {
			switch i % 10 {
			case 3:
				a = true
			case 5:
				b = true
			case 7:
				c = true
			default:
				return false
			}
		}
		if a && b && c {
			return true
		}
		return false
	}
	dfs := func() {
		sta := make([]int, 0, 19683)
		sta = append(sta, 0)
		for len(sta) != 0 {
			var x int
			sta, x = sta[:len(sta)-1], sta[len(sta)-1]
			if check(x) {
				ct++
			}
			if y := x*10 + 3; y <= n {
				sta = append(sta, y)
			}
			if y := x*10 + 5; y <= n {
				sta = append(sta, y)
			}
			if y := x*10 + 7; y <= n {
				sta = append(sta, y)
			}
		}
	}
	dfs()
	fmt.Println(ct)
}
