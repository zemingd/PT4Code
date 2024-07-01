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
	ans := 10
	for i := 1; i*i<=N; i++{
		if N%i == 0{
			current := strconv.Itoa(N/i)
			current_i := strconv.Itoa(i)
			in := 0 
			if len([]rune(current)) < len([]rune(current_i)){
				in = len([]rune(current_i))
			}else{
				in = len([]rune(current))
			}
			if in < ans{
				ans = in
			}
		}
	}
	fmt.Println(ans)
}	
 
func main(){
	N := 0
	fmt.Scan(&N)
	abc057c(N)
}