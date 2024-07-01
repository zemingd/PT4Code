package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	abcd := strings.Split(s, "")
	a, _ := strconv.Atoi(abcd[0])
	b, _ := strconv.Atoi(abcd[1])
	c, _ := strconv.Atoi(abcd[2])
	d, _ := strconv.Atoi(abcd[3])

	if a+b+c+d == 7 {
		fmt.Printf("%d+%d+%d+%d=7\n", a, b, c, d)
	} else if a+b+c-d == 7 {
		fmt.Printf("%d+%d+%d-%d=7\n", a, b, c, d)
	} else if a+b-c+d == 7 {
		fmt.Printf("%d+%d-%d+%d=7\n", a, b, c, d)
	} else if a+b-c-d == 7 {
		fmt.Printf("%d+%d-%d-%d=7\n", a, b, c, d)
	} else if a-b+c+d == 7 {
		fmt.Printf("%d-%d+%d+%d=7\n", a, b, c, d)
	} else if a-b+c-d == 7 {
		fmt.Printf("%d-%d+%d-%d=7\n", a, b, c, d)
	} else if a-b-c+d == 7 {
		fmt.Printf("%d-%d-%d+%d=7\n", a, b, c, d)
	} else if a-b-c-d == 7 {
		fmt.Printf("%d-%d-%d+%d=7\n", a, b, c, d)
	}
}
