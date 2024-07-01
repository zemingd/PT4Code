package main

import "fmt"
import "bufio"
import "os"
import "strconv"
import "sort"

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {

	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	p := make([]int, N)
	sc.Split(bufio.ScanWords)

	for i := 0; i < N; i++ {
		p[i] = nextInt()
	}

	// 昇順ソート
	sort.Ints(p)

	res := 0
	for i := 0; i < K; i++ {
		res += p[i]
	}

	fmt.Println(res)
}
