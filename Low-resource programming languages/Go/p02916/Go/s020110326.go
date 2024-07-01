package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	var aStr, bStr, cStr string
	var a, b, c []int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s", &aStr)
	fmt.Scanf("%s", &bStr)
	fmt.Scanf("%s", &cStr)
	sum := 0

	a, _ = SplitToIntSlice(aStr, " ")
	b, _ = SplitToIntSlice(bStr, " ")
	c, _ = SplitToIntSlice(cStr, " ")

	for i, v := range a {
		sum += b[v]
		if v > 0 && v == a[i-1] {
			sum += c[v]
		}
	}

	fmt.Printf("%d\n", sum)

}

func SplitToIntSlice(str, delim string) (intSlice []int, err error) {
	stringSplitted := strings.Split(str, delim)

	for i := range stringSplitted {
		var iparam int
		iparam, err = strconv.Atoi(stringSplitted[i])
		if err != nil {
			return
		}
		intSlice = append(intSlice, iparam)
	}

	return

}
