package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	inputs := strings.Split(sc.Text(), " ")

	var a []int
	for _, input := range inputs {
		n, _ := strconv.Atoi(input)
		a = append(a, n)
	}

	max1 := a[0]
	if max1 < a[1] {
		max1 = a[1]
	}

	max2 := a[2]
	if max2 < a[3] {
		max2 = a[3]
	}

	fmt.Println(max1 * max2)
}
