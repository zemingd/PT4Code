package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	list := getStdinIntArr()
	K := list[0]
	S := list[1]

	sum := 0
	for z := 0; z <= K; z++ {
		for y := 0; y <= K; y++ {
			if y+z <= S && (S-(y+z)) <= K {
				sum++
			}
		}
	}

	fmt.Printf("%d\n", sum)
}

func getStdin() string {
	sc.Scan()
	return sc.Text()
}
func getStdinInt() int {
	sc.Scan()
	rtn, _ := strconv.Atoi(sc.Text())
	return rtn
}
func getStdinIntArr() []int {
	sc.Scan()
	str := sc.Text()
	list := strings.Split(str, " ")
	rtn := make([]int, len(list))
	for idx, val := range list {
		rtn[idx], _ = strconv.Atoi(val)
	}
	return rtn
}
