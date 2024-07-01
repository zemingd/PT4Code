package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func toIntSliceFromStr(str string) []int {
	strSlice := strings.Split(str, " ")
	var slice []int
	for _, str := range strSlice {
		num, _ := strconv.Atoi(str)
		slice = append(slice, num)
	}
	return slice
}

func main() {
	i1, i2, i3 := nextLine(), nextLine(), nextLine()

	n, _ := strconv.Atoi(i1)
	v := toIntSliceFromStr(i2)
	v2 := toIntSliceFromStr(i3)

	sum := 0
	for i := 0; i <= n; n++ {
		diff := v[i] - v2[i]
		if diff > 0 {
			sum += diff
		}
	}

	fmt.Println(sum)
}
