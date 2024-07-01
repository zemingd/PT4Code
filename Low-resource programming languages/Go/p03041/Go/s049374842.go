package main
import (
	"fmt"
	"sort"
)
func main(){ abc126e() }
type Data struct {
	a int
	b int
}

type DataByA []Data

func (d DataByA) Len() int {
	return len(d)
}

func (d DataByA) Less(i, j int) bool {
	return d[i].a < d[j].a
}

func (d DataByA) Swap(i, j int) {
	d[i], d[j] = d[j], d[i]
}

func abc126e() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)

	data := make([]Data, m)

	// sort problems
	for i := 0; i < m; i++ {
		var a, b, dummy int
		fmt.Scanf("%d %d %d", &a, &b, &dummy)
		data[i] = Data{a: a, b: b}
	}

	// sort.Slice is available in golang 1.8 or later
	// can't use it in AtCoder (golang 1.6)
	// sort.Slice(data, func(i, j int) bool {
	// 	return data[i].a < data[j].a
	// })
	sort.Sort(DataByA(data))

	ar := make([]int, n+1)
	currentIndex := 0
	for _, d := range data {
		if ar[d.a] > 0 {
			ar[d.b] = ar[d.a]
		} else if ar[d.b] > 0 {
			ar[d.a] = ar[d.b]
		} else {
			currentIndex++
			ar[d.a] = currentIndex
			ar[d.b] = currentIndex
		}
	}

	ans := currentIndex
	for i := 1; i <= n; i++ {
		if ar[i] == 0 {
			ans++
		}
	}
	fmt.Printf("%d", ans)
}
