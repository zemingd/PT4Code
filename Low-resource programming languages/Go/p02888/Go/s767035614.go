package main
 
import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
    sc.Split(bufio.ScanWords)
 
	N := nextInt()
	L := make([]int, N)
	for i := 0; i < N; i++ {
		L[i] = nextInt()
	}
 
    fmt.Println(solver(N,L))
}

func solver(N int, L []int) int {
    var ans int
    ans = 0
    sort.Sort(sort.Reverse(sort.IntSlice(L)))
    for i := 0; i < N-2; i++ {
        for j := i+1; j < N-1; j++ {
            for k := N-1; k < j; k-- {
                if L[i] < L[j] + L[k] && 
                   L[j] < L[i] + L[k] &&
                   L[k] < L[j] + L[i] {
                    ans++
                }
            }
        }
    }
    return ans
}