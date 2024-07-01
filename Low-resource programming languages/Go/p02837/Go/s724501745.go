package honestorunkind2

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	// number of people
	n int = 0
	// number of evidence
	nEvidence   int = 0
	countHonest int = 0
)

func main() {
	// read standard input
	stdin := bufio.NewScanner(os.Stdin)
	n, _ = strconv.Atoi(stdin.Text())
	honests := make([]int, n)
	for stdin.Scan() {
		nEvidence, _ = strconv.Atoi(stdin.Text())
		for i := 0; i < nEvidence; i++ {
			slice := strings.Split(stdin.Text(), " ")
			person, _ := strconv.Atoi(slice[0])
			isHonest, _ := strconv.Atoi(slice[1])
			if isHonest == 1 {
				honests[person-1] = isHonest
			}
		}
	}
	for h := range honests {
		if h == 1 {
			countHonest = countHonest + 1
		}
	}
	fmt.Println(countHonest)
}
