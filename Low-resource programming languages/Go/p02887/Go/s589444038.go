package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}
 
func abc143c(N int, S string){
	var state rune
	count := 0
	/*
	for i := 0; i < N; i++{
		if state != S[i]{
			state = S[i]
			fmt.Print(state)
		}
	}
	*/
	for pos, r := range S{
		if state != r{
			state = r
			count++
		}
		pos++
	}
	fmt.Println(count)
}	
 
func main(){
	N := 0
	S := ""
	fmt.Scan(&N)
	fmt.Scan(&S)
	abc143c(N,S)
}