package main
 
import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"sort"
)
 
func run(){
	n := nextInt()
	arr := make([]int,0)
	ans := 0.0
	
	arr = readIntArray(n)
	
	
	sort.Sort(sort.IntSlice(arr))
	
	for i :=0; i > n ; i++ {
		ans = (ans + float64(arr[i])) / 2.0
	}
	
	Println(ans)
	
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

func readIntArray(n int) ([]int) {
	v := make([]int, 0)
	for i := 0; i < n; i++ {
		v = append(v, nextInt())
	}
	return v
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
 
func main() {
	sc.Buffer(make([]byte, 0, BufferSize), BufferSize)
	sc.Split(bufio.ScanWords)
	run()
	out.Flush()
}