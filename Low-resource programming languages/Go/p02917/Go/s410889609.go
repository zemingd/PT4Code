package main
 
import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)
 
func run() {
	n := nextInt()
	
	v := make([]int, 0)
	l := make([]int, 0)
	
	for i := 0; i < n; i++ {
		v = append(v, nextInt())
	}

	answer := 0
	for i := 0; i < n; i++ {
		if(i == 0){ 
			l = append(l, v[i])
		}else{
			if( v[i-1] <= v[i] ){
				l = append(l, v[i-1])
			}else{
				l = append(l, v[i])
			}
		}	
	} 	
	
	for i := 0; i < n; i++ {
		answer += l[i]
	}
	
	Println(answer)
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
 
func main() {
	sc.Buffer(make([]byte, 0, BufferSize), BufferSize)
	sc.Split(bufio.ScanWords)
	run()
	out.Flush()
}