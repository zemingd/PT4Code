package main
 
import (
	"fmt"
	"sort"
)
 
type work struct {
	time     int
	deadline int
}
 
type works []work
 
func (w works) Len() int {
	return len(w)
}
 
func (w works) Swap(i, j int) {
	w[i], w[j] = w[j], w[i]
}
 
func (w works) Less(i, j int) bool {
	if w[i].deadline == w[j].deadline {
		return w[i].time < w[j].time
	} else {
		return w[i].deadline < w[j].deadline
	}
}
 
func main() {
	var n int
	fmt.Scanf("%d", &n)
 
	var ws works = make([]work, 0)
	for i := 0; i < n; i++ {
		var w work
		fmt.Scanf("%d %d", &w.time, &w.deadline)
		ws = append(ws, w)
	}
 
	sort.Stable(ws)
 
	time := 0
	for _, work := range ws {
		time += work.time
		if work.deadline < time {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}