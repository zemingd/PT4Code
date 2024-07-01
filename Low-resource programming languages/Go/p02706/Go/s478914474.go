package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	m := nextInt()
	var x = []int{}
	for i := 0; i < m; i++ {
		x = append(x, nextInt())
	}

	free := n
	for _, day := range x {
		free -= day
	}

	if free < 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(free)
	}

}
