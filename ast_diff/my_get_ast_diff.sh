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

cd $data_dir
rm -rf ml_raw
cp -pR $source ml_raw/
find ml_raw -type f -name "*_buggy.js" -exec cp -p {} ml_astJSON/ \; -print
