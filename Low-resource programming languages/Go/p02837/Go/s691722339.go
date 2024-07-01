package main
 
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var N, ANS int
type Person struct {
	trust bool
	words []map[int]int
}
func main() {
	N = scanInt()
	persons := make([]Person, N)
	for i := 0; i < N; i++ {
		p := Person{}
		count := scanInt()
		for j := 0; j < count; j++ {
			key := scanInt()
			value := scanInt()
			m := map[int]int { key: value }
			p.words = append(p.words, m)
		}
		persons[i] = p
	}
	solve(persons, 0)
	fmt.Println(ANS)
}

func solve(persons []Person, depth int){
	if depth >= N {
		listen(persons)
		return
	}
	persons[depth].trust = false
	solve(persons, depth + 1)
	persons[depth].trust = true
	solve(persons, depth + 1)
}

func listen(persons []Person) {
	count := 0
	for _, person := range persons {
		if person.trust {
			for _, word := range person.words {
				for k, v := range word {
				  key := k - 1
				  if persons[key].trust == true && v == 0 {
					return
				  } else if persons[key].trust == false && v == 1 {
					return
				  } else {
				    if v == 0 { v = -1 }
					count++
				  }
				}
			} 
		}
	}
	ANS = calcMax(ANS, count)
}

func calcMax(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
// --------------- BASE DEFINITIONS ---------------

var sc = bufio.NewScanner(os.Stdin)
 
func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
