package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func stringsFiledsToInts() []int {
	sc.Scan()
	r := []int{}
	ss := strings.Fields(sc.Text())
	for _, s := range ss {
		i, e := strconv.Atoi(s)
		if e != nil {
			panic(e)
		}
		r = append(r, i)
	}
	return r
}

func main() {
	inputs := stringsFiledsToInts()
	A := inputs[0]
	B := inputs[1]
	C := inputs[2]
	K := inputs[3]

	if K <= A {
		fmt.Print(1 * A)
	} else if K <= A+B {
		fmt.Print(1 * A)
	} else {
		fmt.Print(1*A + -1*(C-B))
	}
}
