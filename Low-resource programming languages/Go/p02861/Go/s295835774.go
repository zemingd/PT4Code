package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

type Pos struct {
	x int
	y int
}

func main() {
	Count := readLineInt()[0]
	PosArray := make([]Pos, Count)
	Loop(0, Count, func(i int) {
		in := readLineInt()
		PosArray[i] = Pos{in[0], in[1]}
	})

	var Sum float64
	Perm := getAllPermutation(getPermutationFromLength(Count)...)
	for _, v := range Perm {
		Length := len(v)
		for i, from := range v {
			if Length <= i+1 {
				continue
			}
			from--
			to := v[i+1] - 1
			Sum += math.Sqrt(math.Pow(float64(PosArray[from].x-PosArray[to].x), 2) + math.Pow(float64(PosArray[from].y-PosArray[to].y), 2))
		}
	}
	fmt.Println(Sum / float64(len(Perm)))
}

/////////////////////////////////////////

func readLineInt() []int {
	result := make([]int, 0)
	for _, v := range strings.Split(readLine(), " ") {
		i, _ := strconv.Atoi(v)
		result = append(result, i)
	}
	return result
}

var reader = bufio.NewReaderSize(os.Stdin, 1e6)

func readLine() string {
	result := make([]byte, 0, 1e6)
	for {
		line, remains, e := reader.ReadLine()
		if e != nil {
			panic(e)
		}
		result = append(result, line...)
		if !remains {
			break
		}
	}
	return string(result)
}

func Loop(start, end int, f func(i int)) {
	for i := start; i < end; i++ {
		f(i)
	}
}

func pow(a, b int) int {
	result := a
	Loop(0, b-1, func(i int) {
		result = result * a
	})

	return result
}

func sqrt(a int) int {
	return int(math.Sqrt(float64(a)))
}

func getPermutationFromLength(i int) []int {
	result := make([]int, i)
	Loop(0, i, func(i int) {
		result[i] = i + 1
	})
	return result
}

func getAllPermutation(source ...int) [][]int {
	Result := make([][]int, 0, len(source))
	for _, v := range source {
		excluded := excludeFromArray(source, v)
		if len(excluded) == 1 {
			Result = append(Result, []int{v, excluded[0]})
		} else {
			a := getAllPermutation(excluded...)
			for _, av := range a {
				o := make([]int, len(av)+1)
				o[0] = v
				for avi, avv := range av {
					o[avi+1] = avv
				}
				Result = append(Result, o)
			}
		}
	}

	return Result
}

func excludeFromArray(i []int, t int) []int {
	Result := make([]int, len(i)-1)
	index := 0
	for _, c := range i {
		if c != t {
			Result[index] = c
			index++
		}
	}
	return Result
}