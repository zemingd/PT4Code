package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
)

type Int2DMap map[ // IntMap は、map[Int][Int]に便利メソッドを追加します.
int]IntMap

type IntMap map[ // IntMap は、map[Int][Int]に便利メソッドを追加します.
int]int

func lib_MaxInt(values ...int) (max int, err error) {
	if len(values) == 0 {
		return 0, errors.New("empty slice is given")
	}
	max = values[0]
	for _, value := range values {
		if max < value {
			max = value
		}
	}
	return
}
func lib_MustMaxInt(values ...int) (max int) {
	max, err := lib_MaxInt(values...)
	if err != nil {
		panic(err)
	}
	return max
}
func lib_NewInt2DMap() Int2DMap {
	return map[int]IntMap{}
}
func (m Int2DMap) ChMax(key1, key2, value int, values ...int) (replaced bool, valueAlreadyExist bool) {
	max, _ := lib_MaxInt(append(values, value)...)
	if v, ok := m.Get(key1, key2); ok {
		if v < max {
			m.Set(key1, key2, max)
			return true, true
		} else {
			return false, true
		}
	}
	m.Set(key1, key2, max)
	return true, false
}
func (m Int2DMap) Get(key1, key2 int) (int, bool) {
	v1, ok := m[key1]
	if !ok {
		return 0, false
	}
	v2, ok := v1[key2]
	if !ok {
		return 0, false
	}
	return v2, true
}
func (m Int2DMap) Set(key1, key2, value int) (isNewValue bool) {
	v1, ok := m[key1]
	if !ok {
		m[key1] = map[int]int{}
		v1 = m[key1]
	}
	_, ok = v1[key2]
	v1[key2] = value
	return !ok
}
func (m IntMap) Values() (values []int) {
	values = make([]int, 0, len(m))
	for _, v := range m {
		values = append(values, v)
	}
	return
}
func main() {
	scanner := bufio.NewScanner(os.Stdin)
	const initialBufSize = 4096
	const maxBufSize = 1000000
	scanner.Buffer(make([]byte, initialBufSize), maxBufSize)
	scanner.Split(bufio.ScanWords)
	var N int
	scanner.Scan()
	tempN, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	N = int(tempN)
	var W int
	scanner.Scan()
	tempW, _ := strconv.ParseInt(scanner.Text(), 10, 64)
	W = int(tempW)
	w := make([]int, N)
	v := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		tempw, _ := strconv.ParseInt(scanner.Text(), 10, 64)
		w[i] = int(tempw)
		scanner.Scan()
		tempv, _ := strconv.ParseInt(scanner.Text(), 10, 64)
		v[i] = int(tempv)
	}
	fmt.Println(solve(N, W, w, v))
}
func solve(N int, W int, w []int, v []int) int {
	m := lib_NewInt2DMap()
	m.Set(0, 0, 0)
	for i := 0; i < N; i++ {
		for curW, beforeSumV := range m[i] {
			m.ChMax(i+1, curW, beforeSumV)
			if curW+w[i] <= W {
				m.ChMax(i+1, curW+w[i], beforeSumV+v[i])
			}
		}
	}
	return lib_MustMaxInt(m[N].Values()...)
}
