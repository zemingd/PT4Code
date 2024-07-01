package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

type Bytes []byte

func (b Bytes) Len() int {
	return len(b)
}

func (b Bytes) Swap(i, j int) {
	b[i], b[j] = b[j], b[i]
}

func (b Bytes) Less(i, j int) bool {
	return b[i] < b[j]
}

func main(){
	var N int
	fmt.Scan(&N)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	arr := make([]string, N)
	for i := range arr {
		sc.Scan()
		s := []byte(sc.Text())
		sort.Sort(Bytes(s))
		arr[i] = string(s)
	}

	// s -> count
	m := map[string]int{
		arr[0]: 0,
	}
	total := 0
	for i := 1; i < len(arr); i++ {
		s := arr[i]
		if count, ok := m[s]; ok {
			m[s] = count+1
		}else{
			m[s] = 0
		}
		total += m[s]
	}
	fmt.Println(total)
}
