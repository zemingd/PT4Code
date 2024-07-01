package main

import (
	"bufio"
	"fmt"
	"os"
)

var writer = bufio.NewWriter(os.Stdout)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	ret := make([]int, M+1)
	for i := 0; i < N; i++ {
		var K int
		fmt.Scan(&K)
		for j := 0; j < K; j++ {
			var A int
			fmt.Scan(&A)
			ret[A]++
		}
	}

	cnt := 0
	for i := 0; i < M+1; i++ {
		if ret[i] == N {
			cnt++
		}
	}

	fmt.Fprintf(writer, "%d\n", cnt)
	writer.Flush()
}
