export BABEL_DIR=$(pwd)/babel-dir/
export NODE_PATH=$(pwd)/node_modules/

export CRAWLER_HOME="$(pwd)"
data_dir=/home/contextml/hoppity-data/
source=/home/contextml/context-ml/gnn-create-dataset/gnn-dataset/bin-operator/single-statement/data
target=/home/contextml/hoppity-data/ml_astJSON
echo $source
echo $target
#echo $CRAWLER_HOME
python ast_diff/get_ast_diff.py --mode standalone --input_folder $source --output_folder $target --np 1

cd /home/contextml/hoppity-data/
cp -pR data_dir/ ml_raw/
cp ml_raw/*_buggy.js ml_astJSON/