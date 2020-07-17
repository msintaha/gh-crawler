export BABEL_DIR=$(pwd)/../data/babel-dir/
export NODE_PATH=$(pwd)/../data/node_modules/

export CRAWLER_HOME="$(pwd)"
source=../data/small_raw
target=../data/small_astJSON
echo $source
echo $target
#echo $CRAWLER_HOME
python ast_diff/get_ast_diff.py --mode standalone --input_folder $source --output_folder $target