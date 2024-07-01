package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {

	var n int
	fmt.Scan(&n)

	s := make([]int, n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()

	for i, v := range strings.Split(sc.Text(), " ") {
		s[i], _ = strconv.Atoi(v)
	}

	result := true
	for _, i := range s {
		if i%2 == 1 {
			continue
		}
		if i%3 != 0 && i%5 != 0 {
			result = false
		}
	}
	if result {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
}
