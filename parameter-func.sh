while getopts u:a:f: flag
do
    case "${flag}" in
        u) username=${OPTARG};;
        a) age=${OPTARG};;
        f) fullname=${OPTARG};;
    esac
done

if [ $# -ne 6 ];then
     echo "Please input correct parameter"
     echo "$0: -u name -a age -f fullname"
else
     echo "Username: $username";
     echo "Age: $age";
     echo "Full Name: $fullname";
fi
