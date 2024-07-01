package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// Range
func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ary := strings.Split(strings.TrimSpace(sc.Text()), " ")
	a, _ := strconv.Atoi(ary[0])
	b, _ := strconv.Atoi(ary[1])
	c, _ := strconv.Atoi(ary[2])
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

