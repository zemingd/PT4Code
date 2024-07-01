package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s int
	fmt.Scan(&s)
	n := s / 2019
	counter := 0
	str := strconv.Itoa(s)
	for i := 1; i <= n; i++ {
		tester := strconv.Itoa(2019 * i)
		for j := 0; j < len(str); j++ {
			if len(str[j:]) < len(tester) {
				break
			}
			if strings.HasPrefix(str[j:], tester) {
				counter++
			}
		}
	}
	fmt.Println(counter)
}
