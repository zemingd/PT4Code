package main
import "fmt"

func main() {
	var (
		sNum int
		bNum int
		n1, n2 int
	)
	var bNumAry []int

	fmt.Scanf("%d %d", &n1, &n2)
	sNum, bNum = sortNum(n1, n2)

	for i := 1 ;; i++ {
		var jNum = sNum * i
		bNumAry = append(bNumAry, bNum * i)
		for _, j := range bNumAry {
			if j == jNum {
				fmt.Printf("%d", j)
				return
			}
		}
	}
}

func sortNum(n1 int, n2 int)(int, int) {
	if n1 < n2 {
		return n1, n2
	}

	return n2, n1
}
