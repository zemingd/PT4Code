package main
 
import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
	"sort"
)
 
type ByRune []rune

func (r ByRune) Len() int           { return len(r) }
func (r ByRune) Swap(i, j int)      { r[i], r[j] = r[j], r[i] }
func (r ByRune) Less(i, j int) bool { return r[i] < r[j] }

func run() {

	var N int64;
    N = nextInt();
    s := make([]string,N);
    for i := 0 ; i < int(N) ; i++ {
        s[i] = next();
    }
	solve(N, s);

}

func solve(N int64, s []string){	  
	for i, c := range s {
		s[i] = SortStringByCharacter(c)

	}
	
	m := map[string]int{}
	sum := 0

	for _, g := range s {
		v := m[g]
		m[g] = v+1
		sum += v
	}
	Println(sum)
	
}

func StringToRuneSlice(s string) []rune {
	var r []rune
	for _, runeValue := range s {
			r = append(r, runeValue)
	}
	return r
}

func SortStringByCharacter(s string) string {
	var r ByRune = StringToRuneSlice(s)
	sort.Sort(r)
	return string(r)
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
 
func nextInt() int64 {
	a, err := strconv.ParseInt(next(),10, 64)
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
