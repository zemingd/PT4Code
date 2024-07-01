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
	_, v, c := nextLine(), nextLine(), nextLine()

	vL := strings.Split(v, " ")
	cL := strings.Split(c, " ")

	var max int
	for i, u := range vL {
		intU, _ := strconv.Atoi(u)
		intC, _ := strconv.Atoi(cL[i])
		xy := intU - intC

		if xy > 0 {
			max += xy
		}
	}
	fmt.Println(max)
}
