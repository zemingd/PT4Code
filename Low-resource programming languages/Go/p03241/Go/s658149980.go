package main

import (
	"bufio"
	"fmt"
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
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func pfs(n int) (pfs []int) {
	for n%2 == 0 {
		pfs = append(pfs, 2)
		n = n / 2
	}

	for i := 3; i*i <= n; i = i + 2 {
		for n%i == 0 {
			pfs = append(pfs, i)
			n = n / i
		}
	}

	if n > 2 {
		pfs = append(pfs, n)
	}

	return
}

func generateComb(index []int, s, r int, ch chan []int) {
	if r != 0 {
		if s < 0 {
			return
		}
		generateComb(index, s-1, r, ch)
		index[r-1] = s
		generateComb(index, s-1, r-1, ch)
	} else {
		ch <- index
	}
	return
}

func Combinations(n, k int, ch chan []int) {
	index := make([]int, k)
	generateComb(index, n-1, k, ch)
	close(ch)
}

func a(M, N int, ch chan int) {
	ans := 1
	for i := N; i < M; i++ {
		if M%i == 0 {
			ans = M / i
			break
		}
	}
	ch <- ans
	//	close(ch)
}

func b(M, N int, ch chan int) {
	ans := 1
	m := M/N + 1
	for i := 1; i < m; i++ {
		if M%i == 0 && ans < i {
			ans = i
		}
	}
	ch <- ans
	//	close(ch)
}

func main() {
	sc.Split(bufio.ScanWords)

	N, M := getInt(), getInt()

	c := make(chan int)
	go a(M, N, c)
	go b(M, N, c)

	res := <-c
	out(res)
}
