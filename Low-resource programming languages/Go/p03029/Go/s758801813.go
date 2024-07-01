package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	ap := strings.Fields(nextLine())
	a, _ := strconv.Atoi(ap[0])
	p, _ := strconv.Atoi(ap[1])
	p += a * 3
	fmt.Println(p / 2)
}
