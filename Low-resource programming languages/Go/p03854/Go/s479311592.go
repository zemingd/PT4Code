package main

import (
	"fmt"
	"strings"
)

func main() {

	// erasedream yes
	// dreameraser yes
	// eraserdreameraser
	// dreamerer no
	// dream dreamer erase eraser
	var s string
	fmt.Scan(&s)

	s = strings.Replace(s, "eraser", "", -1)
	s = strings.Replace(s, "erase", "", -1)
	s = strings.Replace(s, "dreamer", "", -1)
	s = strings.Replace(s, "dream", "", -1)

	if len(s) == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
