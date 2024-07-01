package main

import (
	"fmt"
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
		fmt.Printf("%v: ", node.Val)
		for _, neigh := range node.Neighs {
			fmt.Printf("%v ", neigh.Val)
		}
		fmt.Println()
	}
}

func dfs(g *Graph, node *Node) map[*Node]bool {
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
				}
			}
		}
	}
	return set
}

func findSets(g *Graph) map[*Node]map[*Node]bool {
	sets := make(map[*Node]map[*Node]bool)
	nodes := g.Nodes
	for _, node := range nodes {
		if _, ok := sets[node]; ok {
			continue
		}
		sets[node] = dfs(g, node)
		for e := range sets[node] {
			sets[e] = sets[node]
		}
	}
	return sets
}

type relation struct {
	from *Node
	to   *Node
}

func main() {
	var n, m, k int
	fmt.Scan(&n, &m, &k)
	people := make([]*Node, n)
	for i := 0; i < n; i++ {
		people[i] = &Node{i, make([]*Node, 0)}
	}

	for i := 0; i < m; i++ {
		var a, b int
		fmt.Scan(&a, &b)

		people[a-1].Neighs = append(people[a-1].Neighs, people[b-1])
		people[b-1].Neighs = append(people[b-1].Neighs, people[a-1])
	}

	g := &Graph{people}

	sets := findSets(g)

	blocked := make(map[*Node]int)
	for i := 0; i < k; i++ {
		var c, d int
		fmt.Scan(&c, &d)

		set := sets[people[c-1]]
		if set[people[d-1]] {
			blocked[people[c-1]]++
		}

		set2 := sets[people[d-1]]
		if set2[people[c-1]] {
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
