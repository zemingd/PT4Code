package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

var s []byte

func main() {
	N := nextInt()
	S := nextBytes()
	alpha := make([][]int, 26)
	pq := make(pqueue, 0)

	for i := 0; i < N; i++ {
		index := S[i] - 'a'
		alpha[index] = append(alpha[index], i)
	}
	for i := 0; i < len(alpha); i++ {
		l := len(alpha[i])
		for j := 0; j < l; j++ {
			for k := j + 1; k < l; k++ {
				item := pair{left: alpha[i][j], right: alpha[i][k], length: 1}
				pq = append(pq, &item)
			}
		}
	}
	heap.Init(&pq)
	ans := 0

	for len(pq) > 0 {
		item := heap.Pop(&pq).(*pair)
		left := item.left + item.length
		right := item.right + item.length

		if left >= item.right || right >= N {
			continue
		}
		if S[left] == S[right] {
			item.length++
			ans = max(ans, item.length)
			heap.Push(&pq, item)
		}
	}

	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

type pair struct {
	left   int
	right  int
	length int
	index  int
}

type pqueue []*pair

// キューの長さ
func (pq pqueue) Len() int { return len(pq) }

// キューの大小比較
// 基本は大きい方を優先する
func (pq pqueue) Less(i, j int) bool {
	if pq[i].length > pq[j].length {
		return true
	} else if pq[i].length < pq[j].length {
		return false
	}

	ivalue := pq[i].right - pq[i].left
	jvalue := pq[j].right - pq[j].left
	if ivalue > jvalue {
		return true
	}
	return false
}

// キューの内容交換
func (pq pqueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

// キューへの追加
func (pq *pqueue) Push(x interface{}) {
	n := len(*pq)
	i := x.(*pair)
	i.index = n
	*pq = append(*pq, x.(*pair))
}

// キューからの取り出し
func (pq *pqueue) Pop() interface{} {
	old := *pq
	n := len(old)
	if n == 0 {
		fmt.Println("queue is empty")
		return nil
	}
	i := old[n-1]
	i.index = -1
	*pq = old[0 : n-1]
	return i
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
