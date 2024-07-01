package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

type Edge struct {
	ToNode int
	EdgeI int
}

var stdin = func() *bufio.Scanner {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Split(bufio.ScanWords)
	return stdin
}()
var edges [][]Edge
var edgeColors []int
var maxColor int

func main() {
	n := readInt()

	// n木作成
	var root int
	edges = make([][]Edge, n+1)
	for i := 1; i < n; i++ {
		a := readInt()
		if i == 1 {
			root = a
		}
		b := readInt()
		edges[a] = append(edges[a], Edge{ToNode: b, EdgeI: i})
		edges[b] = append(edges[b], Edge{ToNode: a, EdgeI: i})
	}

	edgeColors = make([]int, n)
	depthFirstSearchForEdge(root, -1, -1)

	fmt.Println(maxColor)

	for i := 1; i < n; i++ {
		fmt.Println(edgeColors[i])
	}
}
// readString() 読み込んだ文字列を返す
func readInt() int {
	stdin.Scan()
	x, err := strconv.Atoi(stdin.Text())
	if err != nil {
		panic(err)
	}
	return x
}
// depthFirstSearchForEdge() 深さ優先探索に似たものを用いて、辺に色を付ける
func depthFirstSearchForEdge(currentNode, fromNode, usedColor int) {
	color := 1
	maxColor = usedColor
	for _, e := range edges[currentNode] {
		if e.ToNode == fromNode {
			continue
		}
		if color == maxColor {
			color++
			maxColor = color
		}
		edgeColors[e.EdgeI] = color
		depthFirstSearchForEdge(e.ToNode, currentNode, color)
	}
}