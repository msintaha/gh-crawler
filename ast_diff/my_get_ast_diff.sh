export CRAWLER_HOME=$(pwd)
#echo $CRAWLER_HOME
python3 ast_diff/get_ast_diff.py --mode standalone --input_folder ../data/one-diff-dataset --output_folder ../data/ast-json-dataset