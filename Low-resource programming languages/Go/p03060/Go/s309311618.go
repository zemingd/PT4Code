package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n := nextInt(sc)

	var vs, cs []int
	for i := 0; i < n; i++ {
		vs = append(vs, nextInt(sc))
	}
	for i := 0; i < n; i++ {
		cs = append(cs, nextInt(sc))
	}
	var answer int
	for i := 0; i < n; i++ {
		if vs[i] > cs[i] {
			answer += vs[i] - cs[i]
		}
	}
	fmt.Println(answer)

}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
