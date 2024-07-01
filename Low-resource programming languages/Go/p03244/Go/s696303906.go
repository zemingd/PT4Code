package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
)

type Entry struct {
	key   string
	value int
}

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	var a string
	if sc.Scan() {
		a = sc.Text()
	}

	cols := strings.Split(a, " ")

	odd := make(map[string]int)
	even := make(map[string]int)

	odd_1 := &Entry{}
	even_1 := &Entry{}

	odd_2 := &Entry{}
	even_2 := &Entry{}

	for k, v := range cols {
		if k%2 == 0 {
			odd[v]++
			if odd_1.value < odd[v] {
				odd_2 = odd_1
				odd_1 = &Entry{v, odd[v]}
			}
		} else {
			even[v]++
			if even_1.value < even[v] {
				even_2 = even_1
				even_1 = &Entry{v, even[v]}

			}

		}
	}

	if odd_1.key == odd_2.key {
		odd_2.value = 0
	}
	if even_1.key == even_2.key {
		even_2.value = 0
	}

	odd_num := len(odd)
	even_num := len(even)
	num := math.Max(float64(odd_num), float64(even_num))

	// 重複なし
	if odd_1.key != even_1.key {
		fmt.Println(n - odd_1.value - even_1.value)
		return
	}
	// 重複あり
	num = math.Max(float64(odd_1.value+even_2.value), float64(odd_2.value+even_1.value))
	fmt.Println(n - int(num))

}