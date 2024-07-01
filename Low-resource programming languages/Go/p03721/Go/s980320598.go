package main

import (
	"bufio"
	"fmt"
	"os"

	"github.com/emirpasic/gods/trees/binaryheap"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var n, k int
	fmt.Fscan(r, &n, &k)

	heap := binaryheap.NewWithIntComparator()
	var a, b int
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a, &b)
		for j := 0; j < b; j++ {
			heap.Push(a)
		}
	}

	for i := 1; i < k; i++ {
		_, _ = heap.Pop()
	}

	result, _ := heap.Pop()
	fmt.Fprintln(w, result)
}
