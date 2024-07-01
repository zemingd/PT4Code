package main

import "fmt"

var k int
var lun [][]int
var lunlun []int

func main() {
	fmt.Scan(&k)
	lun = make([][]int, 60)
	lunlun = make([]int, 0, k)
	lun[0] = []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	lunlun = append(lunlun, lun[0]...)
	dx := []int{-1, 0, 1}

	for dig := 0; len(lunlun) < k; dig++ {
		for _, x := range lun[dig] {
			for _, d := range dx {
				last := x % 10
				if 0 <= last+d && last+d <= 9 {
					num := x*10+last+d
					lun[dig+1] = append(lun[dig+1], num)
					lunlun = append(lunlun, num)
				}
			}
		}
	}
	fmt.Println(lunlun[k-1])
}
