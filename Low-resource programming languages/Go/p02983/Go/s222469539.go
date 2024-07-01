package main
 
import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"math"
)
 
func run() {

	var L int;
    L = nextInt();
    var R int;
    R = nextInt();
	solve(L, R);

}

func solve(L int, R int){
	min := 2019.0
	if R - L <= 4040 {
		for i := L ; i < int(R); i++ {
			for j := i+1; j <= int(R); j++ {
				min = math.Min(float64((i%2019 * j%2019) % 2019), float64(min))				
			}
		}
		Println(min)
		return
	}else {
		Println(0)
	}
}


// --- template ---
// Thanks https://gist.github.com/halllllll/853ab587fd82ee3ffe6f7fb7fb499695
 
var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)
 
// Caution: You will get unexpected result if a single token is larger than this size.
const BufferSize = 64 * 1024 * 1024
 
func Print(a ...interface{}) (n int, err error) {
	return fmt.Fprint(out, a...)
}
 
func Printf(format string, a ...interface{}) (n int, err error) {
	return fmt.Fprintf(out, format, a...)
}
 
func Println(a ...interface{}) (n int, err error) {
	return fmt.Fprintln(out, a...)
}
 
func next() string {
	sc.Scan()
	return sc.Text()
}
 
func nextInt() int {
	a, err := strconv.Atoi(next())
	if err != nil {
		log.Fatal(err)
	}
	return a
}

func nextFloat() float64 {
	a, err := strconv.ParseFloat(next(), 64)
	if err != nil {
		log.Fatal(err)
	}
	return a
}


type IntHeap []int
func (h IntHeap) Len() int           { return len(h) }
func (h IntHeap) Less(i, j int) bool { return h[i] > h[j] }
func (h IntHeap) Swap(i, j int)      { h[i], h[j] = h[j], h[i] }

func (h *IntHeap) Push(x interface{}) {
	// Push and Pop use pointer receivers because they modify the slice's length,
	// not just its contents.
	*h = append(*h, x.(int))
}

func (h *IntHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[0 : n-1]
	return x
}

/////数字と文字
// 基本クラス
type NS struct {
    Num int
    Str string
}

//////　数字と数字
// 基本クラス
type NN struct {
    Num1 int
    Num2 int
}

 
func main() {
	sc.Buffer(make([]byte, 0, BufferSize), BufferSize)
	sc.Split(bufio.ScanWords)
	run()
	out.Flush()
}

