package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type graph struct {
	setuzoku []int
	value int
	me int
}
func main() {
	scan_init()
	n:= scanInt()
	X := scanInt()
	Y := scanInt()
	// vertexs := make([]int,n)
	graphs := make([]graph,n)
	// cnts := make([]int,n)

	graphs[0].setuzoku = []int{}
	graphs[0].setuzoku = append(graphs[0].setuzoku,1)
	graphs[0].me = 0
	for i:= 1; i<n-1; i++ {
		graphs[i].setuzoku = []int{}
		graphs[i].setuzoku = append(graphs[i].setuzoku, i+1)
		graphs[i].setuzoku = append(graphs[i].setuzoku, i-1)
		graphs[i].me = i
	}
	graphs[n-1].setuzoku = append(graphs[n-1].setuzoku, n-2)
	graphs[n-1].me = n-1

	graphs[X-1].setuzoku = append(graphs[X-1].setuzoku, Y-1)
	graphs[Y-1].setuzoku = append(graphs[Y-1].setuzoku, X-1)
	// ここまでgraph完成
	results := make ([][]int,n) //これはある頂点を基準にした時にどの頂点がどの距離か
	mapresults := make([]map[int]int,n)
	// fmt.Println(graphs)
	for i:=0; i<n; i++{
		results[i] = make([]int,n)
		mapresults[i] = make(map[int]int)
		meboshi := map[int]int{} //どの頂点に訪れたかチェック
		que := []graph{} //que
		meboshi[i] = i
		graphs[i].value = 0
		que = append(que,graphs[i])
		cost := 0
		results[i][i] = graphs[i].value
		cost += 1
		for len(que) > 0{
			var gra graph
			gra,que = pop(que)
			indent := gra.me
			// fmt.Println(indent, gra)
			for _,val := range gra.setuzoku {
				if i == 4 {
					// fmt.Println(gra,val,meboshi,results[i],indent,que)
				}
				if _,ok := meboshi[val]; !ok {
					meboshi[val] = val
					results[i][val] = graphs[indent].value +1
					graphs[val].value = graphs[indent].value + 1
					que = append(que,graphs[val])
				}
			}
			cost += 1
		}
	}
	counter := make([]int,n)
	for i:= 0;i<n; i++ {
		counter[i] = 0
	}
	for i:= 0; i<n; i++ { //編の数
		for j:= 0; j<n; j++ {
			counter[results[j][i]]++
		}
	}
	for i:=1; i<n; i++ {
		fmt.Println(counter[i]/2)
	}
}
func pop(slice []graph) (graph, []graph) {
	ans := slice[0]
	slice = slice[1:len(slice)]
	return ans, slice
}
var sc = bufio.NewScanner(os.Stdin)
func scan_init () {
	sc.Split(bufio.ScanWords)
}
func scanInt () int{
sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}
func scan () string{
 sc.Scan()
	return sc.Text()
}