package main

import "fmt"

func main() {
	var n int
	var line string
	fmt.Scan(&n, &line)
	flg, count := false, 0
	for _, l := range line {
		s := string(l)
		if s == "#" {
			flg = true
		} else if flg {
			count++
		}
	}
	fmt.Println(count)
}