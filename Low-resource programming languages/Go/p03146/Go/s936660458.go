package main

import(
	"fmt"
	"os"
)

func nextValue(i int) int {
	if i%2 == 0 {
		return i/2
	} else {
		return 3*i + 1
	}
}

func main() {
	var s int
	var pro []int
	fmt.Scan(&s)
	pro = append(pro, s)
	top := 0

	for true {
		nv := nextValue(pro[top])
		pro = append(pro, nv)
		for i:=0; i<=top; i++ {
			if nv == pro[i] {
				fmt.Println(len(pro))
				os.Exit(0)
			}
		}
		top++
	}
}