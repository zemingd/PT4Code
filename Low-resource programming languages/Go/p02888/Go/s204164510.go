package main
 
import(
  "fmt"
  "bufio"
	"os"
	"strings"
	"sort"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}

func abc143d(list []int, N int){
	count := 0
	for i := 0; i < N; i++{
		for j := i+1; j < N; j++{
			for k := j+1; k < N; k++{
				if list[k] < list[i]+list[j]{
					count++
				}else{
					break
				}
			}
		}
	}
	fmt.Println(count)
}
func main(){
	N,L := 0,0
	list := []int{}
	fmt.Scan(&N)
	for i := 0; i < N; i++{
		fmt.Scan(&L)
		list = append(list, L)
	}
	sort.Ints(list)
	abc143d(list,N)
}