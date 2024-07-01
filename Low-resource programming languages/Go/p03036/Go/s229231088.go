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
	for i := 0; i <= d; i++ {
		if i != 0 {
			tmp = r*tmp - d
		}
		fmt.Println(tmp)
	}
}
