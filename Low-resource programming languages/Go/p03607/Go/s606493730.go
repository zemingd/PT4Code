package main
 
import (
	"bufio"
	"os"
	"strconv"
	"strings"
	"fmt"
)
  
var sc = bufio.NewScanner(os.Stdin)

func ReadInt() int {
	i, e := strconv.Atoi(readStr())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	N := ReadInt()
    mp := map[int]bool{}
  	for i := 0; i < N; i++{
      A := ReadInt()
        if _, ok := mp[A]; ok {
          			delete(mp, A)
        } else {
          	mp[A] = true
        }
    }
  	fmt.Println(len(mp))
}

 