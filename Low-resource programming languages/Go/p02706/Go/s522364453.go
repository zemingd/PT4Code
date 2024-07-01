// https://atcoder.jp/contests/abc163/tasks/abc163_b

package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, m int
	fmt.Fscanf(in, "%d%d\n", &n, &m)
	var sum = 0

	for i := 0; i < m; i++ {
		var temp int
		fmt.Fscanf(in, "%d ", &temp)
		sum += temp
	}

	if sum > n {
		fmt.Fprintln(out, -1)
	} else {
		fmt.Fprintln(out, n-sum)
	}
}
