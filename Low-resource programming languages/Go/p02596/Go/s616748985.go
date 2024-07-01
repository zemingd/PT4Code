package main

import ."fmt"

// github.com/EndlessCheng/codeforces-go
func main() {
	m,x:=0,0
	Scan(&m)
	for i := 1; i < 2e6; i++ {
		if x = (x*10 + 7) % m; x == 0 {
			Print(i)
			return
		}
	}
	Print(-1)
}
