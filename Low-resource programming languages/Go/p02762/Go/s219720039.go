package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// Queue is for bfs
type Queue struct {
	data []interface{}
}

// Push adds a value to queue
func (q *Queue) Push(v interface{}) {
	q.data = append(q.data, v)
}

// Pop removes the last element and return it
func (q *Queue) Pop() (interface{}, error) {
	if q.Empty() {
		return nil, fmt.Errorf("queue is empty")
	}
	v := q.data[0]
	q.data = q.data[1:]
	return v, nil
}

// Empty returns true if queue is empty
func (q *Queue) Empty() bool {
	return len(q.data) == 0
}

// NewQueue generates a new queue
func NewQueue() *Queue {
	return &Queue{make([]interface{}, 0)}
}

// Graph is a set of nodes
type Graph struct {
	Nodes []*Node
}

// Node has its value and neighbors
type Node struct {
	Val    interface{}
	Neighs []*Node
}

// Show shows a graph
func (g *Graph) Show() {
	nodes := g.Nodes
	for _, node := range nodes {
		fmt.Printf("%v: ", node.Val.(int)+1)
		for _, neigh := range node.Neighs {
			fmt.Printf("%v ", neigh.Val.(int)+1)
		}
		fmt.Println()
	}
}

func dfs(g *Graph, node *Node, groups map[*Node]*Node) map[*Node]bool {
	set := make(map[*Node]bool)
	q := NewQueue()
	q.Push(node)
	set[node] = true
	for !q.Empty() {
		src, _ := q.Pop()
		if v, ok := src.(*Node); ok {
			for _, neigh := range v.Neighs {
				if !set[neigh] {
					q.Push(neigh)
					set[neigh] = true
					groups[neigh] = node
				}
			}
		}
	}
	return set
}

func findSets(g *Graph) map[*Node]map[*Node]bool {
	sets := make(map[*Node]map[*Node]bool)
	groups := make(map[*Node]*Node)
	nodes := g.Nodes
	for _, node := range nodes {
		if leader, ok := groups[node]; ok {
			sets[node] = sets[leader]
			continue
		}

		sets[node] = dfs(g, node, groups)
	}
	return sets
}

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
	n, m, k := nextInt(), nextInt(), nextInt()
	people := make([]*Node, n)
	for i := 0; i < n; i++ {
		people[i] = &Node{i, make([]*Node, 0)}
	}

	for i := 0; i < m; i++ {
		a, b := nextInt(), nextInt()

		people[a-1].Neighs = append(people[a-1].Neighs, people[b-1])
		people[b-1].Neighs = append(people[b-1].Neighs, people[a-1])
	}

	g := &Graph{people}

	sets := findSets(g)

	blocked := make(map[*Node]int)
	for i := 0; i < k; i++ {
		c, d := nextInt(), nextInt()

		setc := sets[people[c-1]]
		if setc[people[d-1]] {
			blocked[people[c-1]]++
		}

		setd := sets[people[d-1]]
		if setd[people[c-1]] {
			blocked[people[d-1]]++
		}
	}

	for i := 0; i < n; i++ {
		pi := people[i]
		set := sets[pi]
		fmt.Printf("%v ", len(set)-len(pi.Neighs)-blocked[pi]-1)
	}
	fmt.Println()
}
