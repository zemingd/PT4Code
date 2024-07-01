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
 
func abc148b(N int, S string,T string){
	for i := 0; i < N; i++{
		fmt.Printf("%c%c",S[i],T[i])
	}
	fmt.Println("")
}
 
func main(){
	N := 0
	S := ""
	T := ""
	fmt.Scan(&N)
	fmt.Scan(&S)
	fmt.Scan(&T)
	abc148b(N,S,T)
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