package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

type priorityQueue []int

func (p priorityQueue) Len() int            { return len(p) }
func (p priorityQueue) Less(i, j int) bool  { return p[i] > p[j] } // 大きい順に取り出すので不等号の向きに注意
func (p priorityQueue) Swap(i, j int)       { p[i], p[j] = p[j], p[i] }
func (p *priorityQueue) Push(x interface{}) { *p = append(*p, x.(int)) }
func (p *priorityQueue) Pop() interface{} {
	old := *p
	n := len(old)
	x := old[n-1]
	*p = old[0 : n-1]
	return x
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	jobs := make(map[int][]int)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		var a, b int
		a = nextInt(sc)
		b = nextInt(sc)
		jobs[a] = append(jobs[a], b)
	}
	// fmt.Println("n", n, "m", m, "jobs", jobs)
	pq := make(priorityQueue, 0, n)
	heap.Init(&pq)
	ans := 0
	for i := 1; i <= m; i++ { // 〆切日より1日前から始める
		for _, v := range jobs[i] { // i日後に給料日がある日をpqに追加する
			//fmt.Printf(" q[d:%d,p:%d]\n", i, v)
			heap.Push(&pq, v)
		}
		if len(pq) > 0 { // 1日に一個の仕事しかできないので、dequeueはiにつき一回だけ
			t := heap.Pop(&pq).(int)
			//fmt.Printf("dq[d:%d,p:%d]\n", i, t)
			ans += t
		}
	}
	fmt.Println(ans)
}
