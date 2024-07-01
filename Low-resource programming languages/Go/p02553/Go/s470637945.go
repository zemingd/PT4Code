package main
 
import (
	"fmt"
)
 
func main() {
	var a, b, c, d int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
	slice := []int{a * c, a * d, b * c, b * d}
	max := sortAsc(slice)[len(slice) - 1]
	fmt.Printf("%d\n", max)
}

func sortAsc(slice []int) []int{
	for{
		flag := true
		for i:= 0; i < len(slice) -1; i++ {
			if slice[i] > slice[i + 1]{
				slice[i + 1] = slice[i]
				flag = false
			}
		}
		if flag {
			break
		}
	} 

	return slice
} 