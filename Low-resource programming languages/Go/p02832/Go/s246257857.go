package main
 
import(
  "fmt"
	"bufio"
	"os"
	"strings"
	"log"
	"strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)

func Rr() []string {
  sc.Scan()
  slice := strings.Split(sc.Text(), " ")
  return slice
}
 
func abc148d(N int){
	blocks := make([]int,N)
	current := 0
	count := 0
	for i := 0; i < N; i++{
		fmt.Scan(&blocks[i])
		if blocks[i] == current+1{
			current = blocks[i]
		}else{
			count+=1
		}
	}
	if count < N{
		fmt.Println(count)
	}else{
		fmt.Println("-1")
	}
}
 
func main(){
	N := 0
	fmt.Scan(&N)
	abc148d(N)
}

//入力関係ライブラリ(Atcoder:yamanobori_oldさんのもの)
func make_liner(maxByte int) *bufio.Scanner {
  liner := bufio.NewScanner(os.Stdin)
  liner.Buffer(make([]uint8, 0, 8192), maxByte)
  return liner
}
func word_spliter() *bufio.Scanner {
  words := make_liner(8192) 
  words.Split(bufio.ScanWords)
  return words
}

func eGetLine(r *bufio.Scanner) string {
  if r.Scan() {
    return r.Text()
  }
  err := r.Err()
  if err != nil {
    log.Fatal(err)
  }
  // EOF
  return ""
}

func eGetInt(r *bufio.Scanner) int {
  line := eGetLine(r)
  return eAtoi(line)
}

func eAtoi(s string) int {
  n, err := strconv.Atoi(s)
  if err != nil {
    log.Fatal(err)
  }
  return n
}