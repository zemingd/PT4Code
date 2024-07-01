package main

import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
)

func main() {
	s := next()
	fmt.Println(strings.Replace(s, "2017", "2018", 1))
}


// -------- Library --------
var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, _ := strconv.Atoi(next())
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}