# csmar

Import data from CSMAR zip/xlsx file.

## Install

```stata
* Latest version
cap ado uninstall csmar
net install esa, from("https://raw.githubusercontent.com/codefoxs/csmar/main/") replace

* Old versions
cap ado uninstall csmar
net install esa, from("https://raw.githubusercontent.com/codefoxs/csmar/v#.#.#/") replace
```

## Example

### Quick use

```stata
csmar "path/to/csmar/zip/file.zip"
csmar "path/to/csmar/xlsx/file.xlsx"
```

### Remove existing files in the folder

```stata
csmar "path/to/csmar/zip/file.zip", remove
```

### Keep the raw case for variable names

```stata
csmar "path/to/csmar/zip/file.zip", remove case(raw)
```

