package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}
 
func abc057c(N int){
	ans := 0
	for i := 1; i*i<=N; i++{
		if N%i == 0{
			ans = i
		}
	}
	answer := strconv.Itoa(ans)
	fmt.Println(len([]rune(answer)))
}	
 
func main(){
	N := 0
	fmt.Scan(&N)
	abc057c(N)
}