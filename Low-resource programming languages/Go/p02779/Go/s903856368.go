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
	list := make([]int, n)
	m := map[int]int{}

	for i := 0; i < n; i++ {
		list[i] = nextInt()

		_, ok := m[list[i]]
		if ok == true {
			fmt.Println("NO")
			return
		}
		m[list[i]] = list[i]
	}
	fmt.Println("YES")

}
