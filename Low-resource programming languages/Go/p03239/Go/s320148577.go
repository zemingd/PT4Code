package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	p := strings.Split(scanner.Text(), " ")
	N, _ := strconv.Atoi(p[0])
	T, _ := strconv.Atoi(p[1])

	ret := 1001
	for i := 0; i < N; i++ {
		scanner.Scan()
		p = strings.Split(scanner.Text(), " ")
		c, _ := strconv.Atoi(p[0])
		t, _ := strconv.Atoi(p[1])
		if t <= T && c < ret {
			ret = c
		}
	}
	if ret == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(ret)
	}
}