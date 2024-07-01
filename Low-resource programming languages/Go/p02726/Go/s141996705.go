package main

import (
	"fmt"
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

type item struct {
	N     *Node
	Depth int
}

type path struct {
	A *Node
	B *Node
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

func searchDist(dist map[path]int, start *Node) {
	visited := make(map[*Node]bool)
	q := NewQueue()
	q.Push(&item{start, 0})
	visited[start] = true
	for !q.Empty() {
		src, _ := q.Pop()
		if v, ok := src.(*item); ok {
			for _, neigh := range v.N.Neighs {
				if !visited[neigh] {
					q.Push(&item{neigh, v.Depth + 1})
					visited[neigh] = true
					p := path{start, neigh}
					if da, ok := dist[p]; ok {
						if v.Depth+1 < da {
							dist[path{start, neigh}] = v.Depth + 1
							dist[path{neigh, start}] = v.Depth + 1
						}
					} else {
						dist[path{start, neigh}] = v.Depth + 1
						dist[path{neigh, start}] = v.Depth + 1
					}
				}
			}
		}
	}
}

// NewGraph generates a new directed graph
func NewGraph(n, x, y int) *Graph {
	nodes := make([]*Node, n)
	for i := 0; i < n; i++ {
		name := "n" + strconv.Itoa(i)
		nodes[i] = &Node{name, make([]*Node, 0)}
	}

	for i := 0; i < n-1; i++ {
		nodes[i].Neighs = append(nodes[i].Neighs, nodes[i+1])
		nodes[i+1].Neighs = append(nodes[i+1].Neighs, nodes[i])
	}
	nodes[x-1].Neighs = append(nodes[x-1].Neighs, nodes[y-1])
	nodes[y-1].Neighs = append(nodes[y-1].Neighs, nodes[x-1])
	return &Graph{nodes}
}

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)

	g := NewGraph(n, x, y)
	// g.Show()

	dist := make(map[path]int)
	for _, node := range g.Nodes {
		searchDist(dist, node)
	}
	count := make(map[int]int)
	for p, d := range dist {
		if p.A.Val.(string) < p.B.Val.(string) {
			count[d]++
		}
	}
	for k := 1; k < n; k++ {
		fmt.Println(count[k])
	}
}
