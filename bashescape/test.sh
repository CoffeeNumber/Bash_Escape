# Init a 4x5 matrix
a=("0 0 0 0 0" "0 0 0 0 0" "0 0 0 0 0" "0 0 0 0 0")

function aset {
    IFS=' ' read -r -a tmp <<< "${a[$1]}"
    tmp[$2]=$3
    a[$1]="${tmp[@]}"
}

# Set a[2][3] = 3
aset 2 3 3
aset 0 0 1.
aset 0 1 T
aset 0 2 O
aset 0 3 N
aset 0 4 I

# Show result
for r in "${a[@]}"; do
  echo $r
done
