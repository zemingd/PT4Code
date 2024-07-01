package main

import(
	"bufio"
	"os"
	"strings"
	"fmt"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	num := strings.Split(sc.Text(), " ")
	a,_ := strconv.Atoi(num[0])
	b,_ := strconv.Atoi(num[1])
	plus := a + b
	minus := a - b
	kaker := a * b
	list := []int{plus, minus, kaker}
	for i := 0;i < 3;i++ {
		for j := 2; j > 0;j-- {
			if list[j] > list[i] {
				t := list[j]
				list[j] = list[i]
				list[i] = t
			}
		}
	}
	fmt.Printf(strconv.Itoa(list[0]))
}