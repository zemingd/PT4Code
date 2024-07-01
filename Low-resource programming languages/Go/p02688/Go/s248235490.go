package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		log.Fatal(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
func main() {
	sc.Split(bufio.ScanWords)

	n, k := getInt(), getInt()

	d := make([]int, k)
	a := make([][]int, 100)
	cnt := make([]int, n)
	ans := 0
	for i, _ := range d {
		d[i] = getInt()
		for j := 0; j < d[i]; j++ {
			a[i][j] = getInt()
		}
	}
	for i, _ := range cnt {
		for j, _ := range cnt {
			cnt[a[i][j]]++
		}
	}
	for i, _ := range cnt {
		if cnt[i] == 0 {
			ans++
		}
	}
	out(ans)
}
