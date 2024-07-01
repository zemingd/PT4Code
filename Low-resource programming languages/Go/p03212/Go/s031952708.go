package main

import (
	"fmt"
	"strconv"
)

//一部改良したけどマルパクリすんません
var n int
var numOf753 = [3]int{3, 5, 7}
var count = 0

func dfs(v int) {
	if isContains(v, 3) && isContains(v, 5) && isContains(v, 7) {
		count++
	}
	for _, next := range numOf753 {
		tmp := v*10 + next
		//if v is equal to over n, break.
		if tmp > n {
			continue
		}
		dfs(tmp)
	}
}

// firstofall,loop {3,5,7}
// if 3, then do loop 3o. o is {3,5,7}
// so every time change a number, the number has a loop of list{3,5,7}
func main() {
	fmt.Scan(&n)
	for _, v := range numOf753 {
		dfs(v)
	}
	fmt.Println(count)
}

func isContains(n, d int) bool {
	s := strconv.Itoa(n)
	flg := false
	for i := 0; i < len(s); i++ {
		c, _ := strconv.Atoi(string(s[i]))
		if c == d {
			flg = true
		}
	}
	return flg
}