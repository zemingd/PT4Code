package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()

	var monsters []int
	for i := 0; i < n; i++ {
		monsters = append(monsters, readInt())
	}

	fmt.Println(solve(n, monsters))
}

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, e := strconv.Atoi(read())
	if e != nil {
		panic(e)
	}
	return i
}

func solve(n int, monsters []int) int {
	m := make(map[int]int)
	slim := make([]int, 0)
	for _, element := range monsters {
		if _, ok := m[element]; !ok {
			m[element] = 0
			slim = append(slim, element)
		}
	}
	//fmt.Printf("slim: %v\n", slim)

	if len(slim) == 1 {
		return slim[0]
	}

	var max = 1
	var answer = 1
	var allOK = false
	for i := 0; i < len(slim); i++ {
		allOK = true
		//fmt.Printf("i: %v\n", slim[i])
		for j := 0; j < len(slim); j++ {
			if i == j {
				continue
			}
			//fmt.Printf("j: %v\n", slim[j])
			if slim[j]%slim[i] != 0 {
				allOK = false
				break
			}
		}
		if allOK {
			// すべて割り切れたとき
			answer = slim[i]
			//fmt.Printf("answer: %v\n", answer)
			if max < answer {
				max = answer
			}
		}
	}
	return max
}
