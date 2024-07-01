package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	arr := scanArrayInt()
	var t float64
	for _, v := range arr {
		t += 1 / v
	}
	fmt.Println(1 / t)
}
func scanArrayInt() []float64 {
	var ret = []float64{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, float64(i))
	}
	return ret
}