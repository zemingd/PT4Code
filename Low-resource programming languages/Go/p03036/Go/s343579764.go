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
	var tmp int
	rdx := strings.Fields(nextLine())
	r, _ := strconv.Atoi(rdx[0])
	d, _ := strconv.Atoi(rdx[1])
	x, _ := strconv.Atoi(rdx[2])
	tmp = x
	for i := 0; i < 10; i++ {
		tmp = r*tmp - d
		fmt.Printf("\n%d", tmp)
	}
}