package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	s := bufio.NewScanner(os.Stdin)
	s.Scan()

	rgb := strings.Split(s.Text(), " ")
	r, _ := strconv.ParseInt(rgb[0], 10, 64)
	g, _ := strconv.ParseInt(rgb[1], 10, 64)
	b, _ := strconv.ParseInt(rgb[2], 10, 64)

	if (r*100+g*10+b)%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}