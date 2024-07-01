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
	var n, m, ans int
	var k [30]int
	var array [30]int
	fmt.Scanf("%d %d", &n, &m)
	for i := 0; i < n; i++ {
		k[i] = nextInt()
		for j := 0; j < k[i]; j++ {
			a := nextInt()
			a--
			array[a]++
		}
	}

	for _, a := range array {
		if a == n {
			ans++
		}
	}

	fmt.Println(ans)

}
