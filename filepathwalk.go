package filepathwalk

import (
	"fmt"
	"os"
	"path/filepath"
)

func Walk(rootPath string) {
	err := filepath.Walk(rootPath, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			fmt.Printf("prevent panic by handling failure accessing a path %q: %v\n", path, err)
			return err
		}
		fmt.Printf("Walk func for %v\n", info)
		return nil
	})
	if err != nil {
		fmt.Println("File walk failed")
	}
}
