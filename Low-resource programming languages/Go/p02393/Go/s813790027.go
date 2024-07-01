package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	n, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return n
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	vec := make([]int, 0, 3)
	for i := 0; i < 3; i++ {
		vec = append(vec, nextInt(sc))
	}
	sort.Ints(vec)
	fmt.Println(vec[0], vec[1], vec[2])
}

