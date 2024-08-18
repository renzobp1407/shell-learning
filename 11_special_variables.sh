# the representation of the parameters in the functions

$0 - The filename of the current script.|
$n - The Nth argument passed to script was invoked or function was called.|
$# - The number of argument passed to script or function.|
$@ - All arguments passed to script or function.|
$* - All arguments passed to script or function.|
$? - The exit status of the last command executed.|
$$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
$! - The process number of the last background command.|

# Example

#!/bin/bash
echo "Script Name: $0"
function func {
    for var in $*
    do
        let i=i+1
        echo "the \$${i} argument is: ${var}"
    done
    echo "the total count of arguments: $#"    
}
func We are argument

# $0 and $* have different behavior when enclosd in double quotes

# Example 2

#!/bin/bash
function func2 {
    echo "--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo "--- \"\$*\""
    for ARG in "$@"
    do
        echo $ARG
    done        
}
func2 We are argument