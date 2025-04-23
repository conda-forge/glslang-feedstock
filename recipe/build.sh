set -ex
mkdir -p build
cd build

cmake ${CMAKE_ARGS} \
    -GNinja \
    -DALLOW_EXTERNAL_SPIRV_TOOLS=ON \
    -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=ON \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    ..

ninja -j${CPU_COUNT}
ninja install
