cd PyFlex/bindings
rm -rf build
mkdir build
cd build
# Seuss 
if [[ $(hostname) = *"compute-0"* ]] || [[ $(hostname) = *"autobot-"* ]] || [[ $(hostname) = *"yertle"* ]]; then
    export CUDA_BIN_PATH=/usr/local/cuda-9.2
fi
cmake -DPYBIND11_PYTHON_VERSION=3.8 .. -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-9.2
make -j
