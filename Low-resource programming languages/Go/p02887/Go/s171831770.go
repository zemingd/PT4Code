package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var slimestr string
	fmt.Scan(&n)
	fmt.Scan(&slimestr)
	slimes := strings.Split(slimestr, "")
	ans := 1
	for index, slime := range slimes {
		if index+1 >= n {
			break
		}
		next := slimes[index+1]
		if slime != next {
			ans++
		}
	}
	fmt.Println(ans)
}
