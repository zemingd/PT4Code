package main

import (
	"bufio"
	"os"
	"sort"
	"strconv"
	"strings"
	"fmt"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func geti() int {
	n, _ := strconv.Atoi(read())
	return n
}

// 10 11 12 => [10, 11, 12]
func getli(size int) ([]int) {
	a := make([]int, size)
	list := strings.Split(read(), " ")
	for i, s := range list {
		n, _ := strconv.Atoi(s)
		a[i] = n
	}
	return a
}

func get2byte(size int) ([][]byte) {
	a := make([][]byte, size)
	for i := 0; i < size; i++ {
		var low string
		fmt.Scan(&low)
		a[i] = []byte(low)
	}
	return a
}

func transpose(a [][]int) {
	n := len(a)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			a[i][j], a[j][i] = a[j][i], a[i][j]
		}
	}
}

func sum(numbers ...int) int {
	sum := 0

	for _, number := range numbers {
		sum += number
	}

	return sum
}

func Max(numbers ...int) int {
	max := numbers[0]
	for i, number := range numbers {
		if i == 0 {
			continue
		}
		if number > max {
			max = number
		}
	}
	return max
}

func Min(numbers ...int) int {
	max := numbers[0]
	for i, number := range numbers {
		if i == 0 {
			continue
		}
		if max > number {
			max = number
		}
	}
	return max
}

func solve_queue(k int, vs []int) int {
	amari := Max(0, k-len(vs))
	counter := Min(k-1, len(vs)-1)
	temp := make([]int, len(vs))
	for i, v := range vs {
		temp[i] = v
	}
	sort.Ints(temp)
	non0index := 0
	for i, v := range temp {
		if v >= 0 {
			non0index = i
			break
		}
	}
	index := Min(non0index, amari)

	max := sum(vs[index:]...)

	for {
		if (k - amari - counter) > counter {
			break
		}
		if vs[counter] <= 0 {
			counter -= 1
			continue
		}

		temp := make([]int, len(vs[:counter]))
		for i, v := range vs[:counter] {
			temp[i] = v
		}
		sort.Ints(temp)
		non0index := 0
		for i, v := range temp {
			if v >= 0 {
				non0index = i
				break
			}
		}
		index := Min(non0index, k - counter + amari)
		max = Max(max, sum(temp[index:counter]...))
		counter -= 1
	}
	return max
}

func main() {
	nk := getli(2)
	n := nk[0]
	k := nk[1]
	vs := getli(n)
	fmt.Println(solve(k, vs))
}


func solve(k int, vs []int) int {
	temp := make([]int, len(vs))
	for i, v := range vs {
		temp[len(vs) - i - 1] = v
	}
	max := 0
	for i := 0; i<=k; i++ {
		fmt.Println(solve_queue(i, vs))
		fmt.Println(solve_queue(k-i, temp))
		max = Max(solve_queue(i, vs) + solve_queue(k-i, temp), max)
	}
	return max
}
