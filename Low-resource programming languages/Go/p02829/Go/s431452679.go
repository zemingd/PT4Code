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
 
func abc148a(a int, b int){
	if a+b == 3{
		fmt.Println(3)
	}else if a+b == 4{
		fmt.Println(2)
	}else{
		fmt.Println(1)
	}
}
 
func main(){
	a := 0
	b := 0
	fmt.Scan(&a)
	fmt.Scan(&b)
	abc148a(a,b)
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