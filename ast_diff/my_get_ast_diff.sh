export BABEL_DIR=$(pwd)/babel-dir/
export NODE_PATH=$(pwd)/node_modules/

export CRAWLER_HOME="$(pwd)"
data_dir=/mnt/volume1/ubc-works/hoppity-data/
source=/home/contextml/context-ml/gnn-create-dataset/gnn-dataset/bin-operator/single-statement/data
target=/home/contextml/hoppity-data/ml_astJSON
echo $source
echo $target
#echo $CRAWLER_HOME
python ast_diff/get_ast_diff.py --mode standalone --input_folder $source --output_folder $target --np 1

cd /mnt/volume1/ubc-works/hoppity-data/
cp -pR $source ml_raw/
cp ml_raw/*_buggy.js ml_astJSON/