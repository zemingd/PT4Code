package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	n := 2 * math.Pow(10, 5)
	k := 0
	a := []int{}
	fmt.Scan(&n)
	fmt.Scan(&k)

	reader := bufio.NewReader(os.Stdin)
	t, _ := reader.ReadString('\n')
	for _, s := range strings.Split(t, " ") {
		x, err := strconv.Atoi(s)
		if err != nil {
			panic("parse error")
		}
		a = append(a, x)
	}

	result := []int{}
	for i, x := range a {
		for j, y := range a {
			if j >= i {
				continue
			}
			result = append(result, x*y)
		}
	}

	sort.Ints(result)
	//	fmt.Println(result)
	fmt.Println(result[k-1])
}
