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

// Path represents a path from start to goal
type Path struct {
	Goal *Node
	Path []*Node
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

// FindPath finds a path from start to goal
func (g *Graph) FindPath(start, goal *Node) ([]*Node, error) {
	visited := make(map[*Node]bool)
	q := NewQueue()
	q.Push(&Path{start, make([]*Node, 0)})
	for !q.Empty() {
		src, _ := q.Pop()
		if v, ok := src.(*Path); ok {
			if v.Goal == goal {
				return v.Path, nil
			}
			for _, neigh := range v.Goal.Neighs {
				if !visited[neigh] {
					path := append(v.Path, neigh)
					q.Push(&Path{neigh, path})
					visited[neigh] = true
				}
			}
		}
	}
	return nil, fmt.Errorf("cannot find a path")
}

type twoPeople struct {
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

	friends := make(map[twoPeople]bool)

	for i := 0; i < m; i++ {
		var a, b int
		fmt.Scan(&a, &b)

		people[a-1].Neighs = append(people[a-1].Neighs, people[b-1])
		people[b-1].Neighs = append(people[b-1].Neighs, people[a-1])
		first := twoPeople{people[a-1], people[b-1]}
		second := twoPeople{people[b-1], people[a-1]}
		friends[first] = true
		friends[second] = true
	}

	for i := 0; i < k; i++ {
		var c, d int
		fmt.Scan(&c, &d)

		first := twoPeople{people[c-1], people[d-1]}
		second := twoPeople{people[d-1], people[c-1]}
		friends[first] = true
		friends[second] = true
	}

	g := &Graph{people}

	for i := 0; i < n; i++ {
		cnt := 0
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}
			first := twoPeople{people[i], people[j]}
			if !friends[first] {
				_, err := g.FindPath(people[i], people[j])
				if err == nil {
					cnt++
				}
			}
		}
		fmt.Printf("%d ", cnt)
	}
	fmt.Println()
}
