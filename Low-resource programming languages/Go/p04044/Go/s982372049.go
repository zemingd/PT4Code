package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	nextInt()

	slice := make([]string, n)
	for i := 0; i < n; i++ {
		slice[i] = nextLine()
	}

	sort.Sort(sort.StringSlice(slice))

	str := strings.Join(slice, "")
	fmt.Println(str)

}
