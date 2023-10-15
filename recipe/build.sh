set -ex
mkdir -p build
cd build

cmake ${CMAKE_ARGS} \
    -DALLOW_EXTERNAL_SPIRV_TOOLS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    ..

make -j${CPU_COUNT}
make install
