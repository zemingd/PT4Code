package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s string
	fmt.Fscan(r, &s)

	mp := map[string]int{
		"SUN": 7,
		"MON": 6,
		"TUE": 5,
		"WED": 4,
		"THU": 3,
		"FRI": 2,
		"SAT": 1,
	}
	fmt.Println(mp[s])
}