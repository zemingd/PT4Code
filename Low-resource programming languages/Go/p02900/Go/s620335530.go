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
	n := nextFloat()
	k := nextFloat()



	count := 0
	count2 := 0
	count3 := 0

	for i := 1; i < int(math.Pow(n,0.5))+1; i++ {
		if(int(n) % i == 0 && k % i == 0 ){
			for j := 2; j < int(math.Pow(float64(i),0.5))+1; j++ {
				if( i % j == 0){
					count2 ++
				}
			}
			if count2 > 0 {
				count3++
				count2 =0
			}
			count ++
		}
	}

	Println(count - count3)	
}

// --- template ---
// Thanks https://gist.github.com/halllllll/853ab587fd82ee3ffe6f7fb7fb499695
 
var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)
 
// Caution: You will get unexpected result if a single token is larger than this size.
const BufferSize = 64 * 1024 * 1024
 

func gcd(a, b int) int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

func Print(a ...interface{}) (n int, err error) {
	return fmt.Fprint(out, a...)
}
 
func Printf(format string, a ...interface{}) (n int, err error) {
	return fmt.Fprintf(out, format, a...)
}
 

func readIntArray(n int) ([]int) {
	v := make([]int, 0)
	for i := 0; i < n; i++ {
		v = append(v, nextInt())
	}
	return v
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
