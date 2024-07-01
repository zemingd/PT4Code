// You can edit this code!
// Click here and start typing.
package main
 
import (
	"bufio"
	"os"
	"strconv"
	"strings"
)
 
func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	inputs := strings.Split(stdin.Text(), " ")
	var n, k int
	n, _ = strconv.Atoi(inputs[0])
	k, _ = strconv.Atoi(inputs[1])
	stdin.Scan()
	hInput := strings.Split(stdin.Text(), " ")
  fmt.println(n)
  fmt.println(k)
  fmt.println(hInput[0])
}