package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	initialBufSize = 100000
	maxBufSize     = 10000000
)

var (
	sc = bufio.NewScanner(os.Stdin)
	wt = bufio.NewWriter(os.Stdout)
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func nextInts(n int) []int {
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}
	return slice
}

func puts(a ...interface{}) {
	fmt.Fprintln(wt, a...)
}

func max(nums ...int) int {
	ret := nums[0]
	for _, v := range nums {
		if v > ret {
			ret = v
		}
	}
	return ret
}

type Heap struct {
	size  int
	elems [50]int
}

func (heap *Heap) Size() int {
	return heap.size
}

func (heap *Heap) Push(x int) {
	i := heap.size

	for i > 0 {
		// 親ノードの番号
		p := (i - 1) / 2

		// 逆転していないなら抜ける
		if heap.elems[p] <= x {
			break
		}

		// 親ノードの数字を下ろして、自分は上に
		heap.elems[i] = heap.elems[p]
		i = p
	}

	heap.elems[i] = x
	heap.size++
}

func (heap *Heap) Pop() int {
	// 最小値
	ret := heap.elems[0]
	heap.size--
	// rootに持ってくる値
	x := heap.elems[heap.size]

	// rootから下ろしていく
	i := 0
	for i*2+1 < heap.size {
		// 子同士を比較
		a, b := i*2+1, i*2+2
		if b < heap.size && heap.elems[b] < heap.elems[a] {
			a = b
		}
		if heap.elems[a] >= x {
			break
		}

		// 子の数字を持ち上げる
		heap.elems[i] = heap.elems[a]
		i = a
	}

	heap.elems[i] = x

	return ret
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, initialBufSize), maxBufSize)
	defer wt.Flush()

	n, k := nextInt(), nextInt()
	v := nextInts(n)

	ans := 0
	suml, minl := 0, new(Heap)
	for l := -1; l < n; l++ {
		if l >= 0 {
			suml += v[l]
			minl.Push(v[l])
		}
		sumr, minr := 0, new(Heap)
		for r := n; l < r && (l+1)+(n-r) <= k; r-- {
			if r < n {
				sumr += v[r]
				minr.Push(v[r])
			}
			val := suml + sumr
			for d, li, ri := k-(l+1)-(n-r), 0, 0; d > 0; d-- {
				if li <= l && minl.elems[li] < 0 && ri <= n-r-1 && minr.elems[ri] < 0 {
					if minl.elems[li] < minr.elems[ri] {
						val -= minl.elems[li]
						li++
					} else {
						val -= minr.elems[ri]
						ri++
					}
				} else if li <= l && minl.elems[li] < 0 {
					val -= minl.elems[li]
					li++
				} else if ri <= n-r-1 && minr.elems[ri] < 0 {
					val -= minr.elems[ri]
					ri++
				}
			}
			ans = max(ans, val)
		}
	}

	puts(ans)
}
