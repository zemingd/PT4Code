package main

import(
	"fmt"
  	"bufio"
  	"os"
  	"strconv"
  	"strings"
  	"sort"
)

func main(){
  var sc = bufio.NewScanner(os.Stdin)
  sc.Scan()
  num_str := sc.Text()
  numstr := strings.Split(num_str, " ")
  A, _ := strconv.Atoi(numstr[0])
  B, _ := strconv.Atoi(numstr[1])
  num_plus := A + B
  num_sub := A - B
  num_nul := A * B
  
  num_maxs := []int{num_plus,num_sub,num_nul}
  sort.Ints(num_maxs)
  fmt.Println(num_maxs[2])
}