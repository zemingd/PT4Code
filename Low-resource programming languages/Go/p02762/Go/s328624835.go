package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const bufferSize = 1000000

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 0), bufferSize)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	N := nextInt()
	M := nextInt()
	K := nextInt()

	nodes := make([]*node, N+1)
	for i := 1; i <= N; i++ {
		nodes[i] = &node{
			id:       i,
			isFirend: map[int]bool{},
			isBlock:  map[int]bool{},
			suggest:  map[int]bool{},
		}
	}
	for i := 0; i < M; i++ {
		a := nextInt()
		b := nextInt()
		nodes[a].addFriend(nodes[b])
		nodes[b].addFriend(nodes[a])
	}
	for i := 0; i < K; i++ {
		a := nextInt()
		b := nextInt()
		nodes[a].addBlock(b)
		nodes[b].addBlock(a)
	}
	for i := 1; i <= N; i++ {
		n := nodes[i]
		q := &queue{
			arr:     n.friends,
			visited: map[int]bool{},
		}
		round(n, q)
	}
	var ans string
	for i, v := range nodes {
		if i == 0 {
			continue
		}
		ans = fmt.Sprintf("%s %d", ans, len(v.suggest))
	}
	fmt.Println(strings.Trim(ans, ""))
}

type node struct {
	id       int
	friends  []*node
	isFirend map[int]bool
	isBlock  map[int]bool
	suggest  map[int]bool
}

func (n *node) mayAddSuggest(i int) {
	if n.isFirend[i] || n.isBlock[i] || i == n.id {
		return
	}
	n.suggest[i] = true
}

func (n *node) addFriend(f *node) {
	n.friends = append(n.friends, f)
	n.isFirend[f.id] = true
}

func (n *node) addBlock(i int) {
	n.isBlock[i] = true
}

func round(target *node, q *queue) {
	n, ok := q.dequeue()
	if !ok {
		return
	}
	target.mayAddSuggest(n.id)
	for _, v := range n.friends {
		q.enqueue(v)
	}
	round(target, q)
}

type queue struct {
	arr     []*node
	visited map[int]bool
	idx     int
}

func (q *queue) enqueue(n *node) {
	if q.visited[n.id] {
		return
	}
	q.arr = append(q.arr, n)
	q.visited[n.id] = true
}

func (q *queue) dequeue() (*node, bool) {
	if q.idx == len(q.arr) {
		return nil, false
	}
	val := q.arr[q.idx]
	q.idx++
	return val, true
}
