package main

import (
	"bufio"
	"fmt"
	"os"
)

var trainUF []int
var roadUF []int
var trainRank []int
var roadRank []int

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	var n, k, l int
	fmt.Fscan(r, &n, &k, &l)

	trainUF = make([]int, n)
	roadUF = make([]int, n)
	trainRank = make([]int, n)
	roadRank = make([]int, n)
	for i := 0; i < n; i++ {
		trainUF[i] = -1
		roadUF[i] = -1
	}

	for i := 0; i < k; i++ {
		var p, q int
		fmt.Fscan(r, &p, &q)
		roadJoin(p-1, q-1)
	}
	for i := 0; i < l; i++ {
		var p, q int
		fmt.Fscan(r, &p, &q)
		trainJoin(p-1, q-1)
	}

	// for i := 0; i < n; i++ {
	// 	var count int
	// 	for j := 0; j < n; j++ {
	// 		if trainSame(i, j) && roadSame(i, j) {
	// 			count++
	// 		}
	// 	}

	// 	fmt.Fprintf(w, "%d ", count)
	// }

	trainRoots := make([]int, n)
	roadRoots := make([]int, n)
	rootSetMap := map[string]int{}
	for i := 0; i < n; i++ {
		tRoot := trainRoot(i)
		rRoot := roadRoot(i)
		trainRoots[i] = tRoot
		roadRoots[i] = rRoot
		key := fmt.Sprintf("%d#%d", tRoot, rRoot)
		v, _ := rootSetMap[key]
		v++
		rootSetMap[key] = v
	}

	for i := 0; i < n; i++ {
		key := fmt.Sprintf("%d#%d", trainRoots[i], roadRoots[i])
		v, _ := rootSetMap[key]
		fmt.Fprintf(w, "%d ", v)
	}

	fmt.Fprint(w, "\n")
}

func trainRoot(a int) int {
	if trainUF[a] == -1 {
		return a
	}
	return trainRoot(trainUF[a])
}

func trainJoin(a int, b int) {
	aRoot := trainRoot(a)
	bRoot := trainRoot(b)
	if aRoot == bRoot {
		return
	}

	if trainRank[aRoot] < trainRank[bRoot] {
		trainUF[aRoot] = bRoot
	} else {
		trainUF[bRoot] = aRoot
		if trainRank[aRoot] == trainRank[bRoot] {
			trainRank[aRoot]++
		}
	}

}

func trainSame(a int, b int) bool {
	return trainRoot(a) == trainRoot(b)
}

func roadRoot(a int) int {
	if roadUF[a] == -1 {
		return a
	}
	return roadRoot(roadUF[a])
}

func roadJoin(a int, b int) {
	aRoot := roadRoot(a)
	bRoot := roadRoot(b)
	if aRoot == bRoot {
		return
	}

	if roadRank[aRoot] < roadRank[bRoot] {
		roadUF[aRoot] = bRoot
	} else {
		roadUF[bRoot] = aRoot
		if roadRank[aRoot] == roadRank[bRoot] {
			roadRank[aRoot]++
		}
	}
}

func roadSame(a int, b int) bool {
	return roadRoot(a) == roadRoot(b)
}
