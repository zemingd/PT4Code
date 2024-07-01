package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextString() string {
	sc.Scan()
	return sc.Text()
}
func countSlimes(s string) (count int) {
	old := '0'
	for _, ss := range s {
		if old != ss {
			count++
			old = ss
		}
	}
	return
}

func main() {
	nextInt()
	s := nextString()
	count := countSlimes(s)
	fmt.Println(count)
}
