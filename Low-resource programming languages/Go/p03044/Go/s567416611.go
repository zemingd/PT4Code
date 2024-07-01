package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Node struct {
	link []([]int)
}

func getInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

var nodes []Node
var dArr []int

func dfs(nodeNum int) {
	for _, _v := range nodes[nodeNum].link {
		if _v[0] != 0 && dArr[_v[0]] <= 0 {
			dArr[_v[0]] = dArr[nodeNum] + _v[1]
			dfs(_v[0])
		}
	}
}

func main() {
	var n int
	var u, v, w int
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	n = getInt(sc)

	// Init
	nodes = make([]Node, n)
	// queue := make(chan int, n)
	dArr = make([]int, n)

	for i := 0; i < n-1; i++ {
		u = getInt(sc)
		v = getInt(sc)
		w = getInt(sc)
		isContains := false
		for _, _v := range nodes[u-1].link {
			if _v[0] == v-1 {
				isContains = true
				break
			}
		}
		if isContains {
			continue
		}
		nodes[u-1].link = append(nodes[u-1].link, []int{v - 1, w})
		nodes[v-1].link = append(nodes[v-1].link, []int{u - 1, w})
	}

	// queue <- 0

	// for len(queue) > 0 {
	// 	cur := <-queue
	// 	for _, _v := range nodes[cur].link {
	// 		if _v[0] != 0 && dArr[_v[0]] <= 0 {
	// 			dArr[_v[0]] = dArr[cur] + _v[1]
	// 			queue <- _v[0]
	// 		}
	// 	}
	// }

	dfs(0)

	for _, _v := range dArr {
		// fmt.Print(_v)
		// fmt.Print(" : ")
		if _v%2 == 0 {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}
