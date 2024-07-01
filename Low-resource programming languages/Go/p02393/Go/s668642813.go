package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := nextInt(sc)
	b := nextInt(sc)
	c := nextInt(sc)
	fmt.Println(resolve(a, b, c))
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextInt(sc *bufio.Scanner) int64 {
	i, err := strconv.ParseInt(nextString(sc), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func resolve(a, b, c int64) string {
	slice := []int64{a, b, c}
	sort.Slice(slice, func(i, j int) bool {
		return slice[i] < slice[j]
	})
	s := fmt.Sprint(slice)
	s = strings.TrimLeft(s, "[")
	s = strings.TrimRight(s, "]")
	return s
}

