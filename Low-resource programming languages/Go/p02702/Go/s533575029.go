package main

import (
	"fmt"
	"math"
	"strconv"
)

func reverse(s string) string {
    runes := []rune(s)
    for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
        runes[i], runes[j] = runes[j], runes[i]
    }
    return string(runes)
}

func main() {
	var S string
	fmt.Scan(&S)
	S = reverse(S)
	N := 2019
	var m = make([]int, N)
	m[0]++
	total := 0
	for x := 0; x<len(S); x++ {
		tmp, _ := strconv.Atoi(S[x:x+1])
		total += tmp * int(math.Pow10(x))
		m[total % N]++
	}
	cnt := 0
	for _, v := range m {
		if v == 2 {
			cnt++
		}
	}
	fmt.Println(cnt)
}